import 'package:flutter/material.dart';
class second extends StatelessWidget {
   second({Key? key, required this.value}) : super(key: key);
String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
