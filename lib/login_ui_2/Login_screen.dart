import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class HomePage_login extends StatefulWidget {
   HomePage_login({Key? key}) : super(key: key);
  @override
  _HomePage_loginState createState() => _HomePage_loginState();
}

// ignore: camel_case_types
class _HomePage_loginState extends State<HomePage_login> {
  @override
  Widget build(BuildContext context) {
   final Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 20,left: 20,top: size.height * 0.14,bottom: size.height * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 60,),
              Text("Hello,\nWelcome Back", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
              SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/google.png',width: 30,height: 30,),
                      SizedBox(width: 40,),
                      Image.asset('assets/icons/facebook.png',width: 30,height: 30,),
                    ],
                  ),

              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email or Phone number"
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    fillColor: Color(0xff9C9C9D),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.topRight,
                child:
                Text('Forget Password',style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: 20,),
              Container(
                child: TextButton(onPressed: () {},
                  child: Center(
                    child: Text('Login',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                  style: TextButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.all(18),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Center(child: Text("Create account", ))
            ],
          ),
            ],
          ),
        ),
      ),
    );
  }
}
