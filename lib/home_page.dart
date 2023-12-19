import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    //Data fix
    final int to = 2;
    final String name = "Hello";
    double pi = 3.14;
    bool ismale = true;
    num IntDoub = 90.0;
    var Boy = "GIRL";
    const Pi = 3.1415; //data cant be modified
    final hi = "ajak"; //data can be modified
    return Scaffold(
      appBar: AppBar(
        title: Text('MY APP'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Container(
          child: Text('Welcome $to and $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
