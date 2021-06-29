
import 'package:flutter/material.dart';

class BottomNavifationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(onPressed: (){},
              minWidth: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Colors.purple,),
                  Text("Home"),
                ],
              ),
              ),
                MaterialButton(onPressed: (){

                },
              minWidth: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, color: Colors.grey,),
                  Text("Favorite"),
                ],
              ),
              )
            ],
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(onPressed: (){},
              minWidth: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_shopping_cart, color: Colors.grey,),
                  Text("Cart"),
                ],
              ),
              ),
                MaterialButton(onPressed: (){},
              minWidth: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.grey,),
                  Text("Profile"),
                ],
              ),
              )
            ],
            )
          ],),
      ),
    );
  }
}
