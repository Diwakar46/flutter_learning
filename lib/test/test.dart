import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool changEd = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      clipBehavior: Clip.none,
      type: MaterialType.transparency,
      borderRadius: BorderRadius.circular(10.0),
      elevation: 9.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(),
            SizedBox(height: 10,width: 20,child: Container(
              child: Row(
                children: [
                  TextButton(onPressed: (){
                   changEd = true;
                   setState(() {

                   });
                  }, child: Text('MY button'))
                ],
              ),
            ),),
            TextFormField(),


          ],
        ),
      ),
    );
  }
}
