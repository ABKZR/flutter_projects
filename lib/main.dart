import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Bill_Spliter/bill_spliter.dart';
import 'package:flutter_project/Data%20Between%20Screens/screen_one.dart';
import 'package:flutter_project/List/list_view.dart';
import 'package:flutter_project/Login_Ui_1/login_page.dart';
import 'package:flutter_project/Login_Ui_3/home.dart';
import 'package:flutter_project/Movie/movie_list.dart';
import 'package:flutter_project/Todo_List/todo_list.dart';
import 'package:flutter_project/Todoey/model/task_data.dart';
import 'package:flutter_project/Todoey/screens/tasks_screens.dart';
import 'package:flutter_project/border/border.dart';
import 'package:flutter_project/food_app_ui/home_page.dart';
import 'package:flutter_project/login_ui_2/Login_screen.dart';
import 'package:flutter_project/weather_forecast/weather_forecast.dart';
import 'package:provider/provider.dart';

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
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              colors: [Colors.orange, Colors.orangeAccent]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Text(
                "Dashboard",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(.9),
                    Colors.white.withOpacity(.5)
                  ]),
                  border: Border(
                    left: BorderSide(color: Colors.orange),
                    top: BorderSide(color: Colors.orange),
                    right: BorderSide(color: Colors.orange),
                    bottom: BorderSide(color: Colors.orange),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: ListView(
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          dashboardButton(
                            title: 'Food Delivery Ui',
                            page: HomePage(),
                          ),
                          Divider(),
                          dashboardButton(title: 'Login Ui-1', page: Login()),
                          Divider(),
                          dashboardButton(
                              title: 'Login Ui-2', page: HomePage_login()),
                          Divider(),
                          dashboardButton(title: 'ListView', page: PTR()),
                          Divider(),
                          dashboardButton(
                              title: 'Boarder', page: AnimatedContainerApp()),
                          Divider(),
                          dashboardButton(
                              title: 'Data b/w Screens', page: News()),
                          Divider(),
                          dashboardButton(
                              title: 'SignIn/Signup', page: HomeScreen()),
                          Divider(),
                          dashboardButton(
                              title: 'BillSplitter', page: BillSplitter()),
                          Divider(),
                          dashboardButton(title: 'Todo List', page: TodoList()),
                          Divider(),
                          dashboardButton(
                              title: 'Movie App', page: MovieListView()),
                          Divider(),
                          dashboardButton(
                              title: 'Weather Forecast',
                              page: WeatherForecast()),
                              Divider(),
                              dashboardButton(title: 'Todoey', page: ChangeNotifierProvider(create: (BuildContext context) =>TaskData(),
                              child: TaskScreen())),
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class dashboardButton extends StatelessWidget {
  dashboardButton({Key? key, required this.title, required this.page})
      : super(key: key);
  String title;
  final page;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), gradient: LinearGradient(
              //begin: Alignment.bottomCenter,
              colors: [Colors.orange, Colors.orangeAccent])),
      child: TextButton(
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page));
        },
      ),
    );
  }
}
