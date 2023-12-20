import 'package:flutter/material.dart';
import 'package:flutter_learning/screens/home_page.dart';
import 'package:logger/logger.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var logger =
        Logger(); //using logger for fixing the print error message.Creating instance
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/home.png",
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 4,
              child: Text(
                'hello',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Enter User Name", labelText: "UserName"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(1.0)),
                    ),
                    child: const Text("Login"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                      logger.t('hello');
                    },
                  )
                ],
              ),
            )
          ],
        ));}}
