import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Data%20Between%20Screens/screen_one.dart';
import 'package:flutter_project/List/list_view.dart';
import 'package:flutter_project/Login_Ui_1/login_page.dart';
import 'package:flutter_project/Login_Ui_3/home.dart';
import 'package:flutter_project/border/border.dart';
import 'package:flutter_project/food_app_ui/home_page.dart';
import 'package:flutter_project/login_ui_2/Login_screen.dart';
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
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
     home: Scaffold(
        body: Dashboard(),
    ),
    );
  }
}
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: size.height,
        width: size.width,
        //padding: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            colors: [
              Colors.orange,
              Colors.orangeAccent
            ]
          )
        ),
        child: Container(
          margin: EdgeInsets.only(top: 100),

          decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(.9),
              Colors.white.withOpacity(.5)
            ]
          ),
            border: Border(
              left: BorderSide(color:Colors.black),
              top: BorderSide(color:Colors.black),
              right: BorderSide(color:Colors.black),
              bottom: BorderSide(color:Colors.black),
            ),
            borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight: Radius.circular(50)),
          ),
          child: ListView(
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.vertical,
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10,),
                dashboardButton(title: 'Food Delivery Ui',page: HomePage(),),
                Divider(),
                dashboardButton(title: 'Login Ui-1', page: Login()),
                Divider(),
                dashboardButton(title: 'Login Ui-2', page: HomePage_login()),
                Divider(),
                dashboardButton(title: 'ListView', page: PTR()),
                Divider(),
                dashboardButton(title: 'Boarder', page: AnimatedContainerApp()),
                Divider(),
                dashboardButton(title: 'Data b/w Screens', page: news()),
                Divider(),
                dashboardButton(title: 'SignIn/Signup', page: HomeScreen()),
              ],
            ),
      ]
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class dashboardButton extends StatelessWidget {
  dashboardButton({Key? key, required this.title, required this.page}) : super(key: key);
String title;
final page;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          //begin: Alignment.bottomCenter,
          colors: [
            Colors.black12,
            Colors.black38,
          ]
        )

      ),
      child: TextButton(
        child: Text(title,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white
        ),),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page));
        },
      ),
    );
  }
}



