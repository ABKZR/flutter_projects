import 'dart:html';

import 'package:flutter/material.dart';
class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        brightness: Brightness.light,
        leading: Icon(null),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_basket,color: Colors.grey[800],))
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Food Deliver",style: TextStyle(color: Colors.grey[80], fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        AspectRatio(
                          aspectRatio: true ? 3 : 2.5/1,
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: true ? Colors.yellow[700] : Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Align(
                              child: Text('Pizza',style: TextStyle(
                                color: true? Colors.white : Colors.grey[500],
                                fontSize: 18,
                                fontWeight: true ? FontWeight.bold : FontWeight.w100,
                              ),),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );

    }
  }

