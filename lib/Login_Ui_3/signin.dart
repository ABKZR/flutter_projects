import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        leading: IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: AlignmentDirectional.bottomEnd,
            image: AssetImage('assets/images/background-1.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Login',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20,),
                Text("Login Your Account", style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
