import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    // //Data fix
    // const int to = 2;
    // final String name;
    // double pi = 3.14;
    // bool ismale = true;
    // num intDoub = 90.0;
    // var boy = "GIRL";
    // const pI = 3.1415; //data cant be modified
    // final hi = "ajak"; //data can be modified
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Text('hello lo'),
      ),
      drawer: MyDrawer(),
    );
  }
}
