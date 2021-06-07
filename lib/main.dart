import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Data%20Between%20Screens/screen_one.dart';
import 'package:flutter_project/List/list_view.dart';
import 'package:flutter_project/Login_Ui_1/login_page.dart';
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
        width: size.width,
        //padding: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.centerStart,
            colors: [
              Colors.limeAccent.withOpacity(.9),
              Colors.limeAccent.withOpacity(.7),
              Colors.limeAccent.withOpacity(.5),
            ]
          )
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              dashboardButton(title: 'Data b/w Screens', page: news())
            ],
          ),
      ]
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
        borderRadius: BorderRadius.circular(30),
        color: Colors.teal
      ),
      child: TextButton(
        child: Text(title,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.blueGrey
        ),),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page));
        },
      ),
    );
  }
}



