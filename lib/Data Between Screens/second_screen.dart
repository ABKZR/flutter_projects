import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Second extends StatelessWidget {
   Second({Key? key,required this.value }) : super(key: key);
String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("You have Selected $value",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ),
    );
  }
}
