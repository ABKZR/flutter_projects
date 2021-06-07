import 'package:flutter/material.dart';
import 'package:flutter_project/Login_Ui_3/signin.dart';
import 'package:flutter_project/Login_Ui_3/signup.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  SizedBox(height: 20,),
                  Text("Automatic identity verification which enables you to verify your identity",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700
                  ),)
                ],
              ),
              Container(
                height: size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/Illustration.png',
                  ),
                ),
              ),
              ),
              Column(
                children: [
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signin()));
                      },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text('Login',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),),
                      ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border(
                        right: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      )
                    ),
                    padding: EdgeInsets.only(top: 3,left: 3),
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                      },
                      minWidth: double.infinity,
                      height: 60,
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 0,
                      child: Text('Signup',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
