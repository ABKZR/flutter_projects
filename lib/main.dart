import 'package:flutter/material.dart';
import 'package:flutter_project/Data%20Between%20Screens/screen_one.dart';
import 'package:flutter_project/Login_Ui_1/login_page.dart';
import 'border/border.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
        body: Login(),
    ),
    );
  }
}
