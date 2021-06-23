import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(Icons.list,size: 30,color: Colors.lightBlueAccent,),
              backgroundColor: Colors.white,
              radius: 30,
            ),
            SizedBox(height: 10,),
            Text('Todoey',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w700),)
          ],
        ),
      ),
    );
  }
}