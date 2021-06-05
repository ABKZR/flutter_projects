import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   final Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
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
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/google.png',width: 40,height: 40,),
                SizedBox(width: 40,),
                Image.asset('assets/icons/facebook.png',width: 40,height: 40,),
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
            SizedBox(height: 30,),
            Container(
              child: TextButton(onPressed: () {},
                child: Text('Login'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                  elevation: 
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
