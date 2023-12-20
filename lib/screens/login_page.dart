import 'package:flutter/material.dart';
import 'package:flutter_learning/screens/home_page.dart';

import 'package:flutter_learning/utils/routes.dart';
import 'package:logger/logger.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() =>
      _LoginPageState(); //_loginPage can only be used in this class
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

  //final TextEditingController _controller = TextEditingController(); //for using controller
  // controller: _controller

  @override
  Widget build(BuildContext context) {
    var logger =
        Logger(); //using logger for fixing the print error message.Creating instance
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 4,
              child: Text(
                'hello',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      // controller: _controller,
                      decoration: InputDecoration(
                          hintText: "Enter User Name", labelText: "UserName "),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          labelText: "Password"),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changedButton = true;
                        });
                        // USING NAVIGATOR PUSH Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                        await Future.delayed(Duration(seconds: 2));

                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changedButton ? 60 : 100,
                        height: 50,
                        // color: Colors.deepPurple, //cant use two times cause it will be written twice
                        alignment: Alignment.center,
                        child: changedButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            // shape: changedButton? BoxShape.circle : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changedButton ? 30 : 8)),
                      ),
                    )
                    //  ElevatedButton(
                    //   style: ButtonStyle(
                    //       backgroundColor: MaterialStateProperty.all<Color>(
                    //           Colors.deepPurple),
                    //       minimumSize: MaterialStatePropertyAll(Size(30, 40))),
                    //   child: const Text(
                    //     "Login",
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     logger.t('hello');
                    //   },
                    // ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
