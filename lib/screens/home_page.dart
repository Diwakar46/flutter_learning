import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    //Data fix
    const int to = 2;
    final String name;
    double pi = 3.14;
    bool ismale = true;
    num intDoub = 90.0;
    var boy = "GIRL";
    const pI = 3.1415; //data cant be modified
    final hi = "ajak"; //data can be modified
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [Center(

                child: Text('Welcome $to and ${name = "hello"}'),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(decoration: InputDecoration(
                  hintText: "$hi hello,$boy the value of pi = $pi and ${intDoub * pI}"
                ),obscureText: ismale ,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
