
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
   CategoriesWidget({
    Key? key, required this.catName, required this.itemcount, required this.icons}) : super(key: key);
final String catName;
final int itemcount;
final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 10,right: 10,),
        margin: EdgeInsets.only(left: 10),
        
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
        color: Colors.grey.shade300
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icons,color: Colors.purple,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(catName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("$itemcount items",style: TextStyle(fontSize: 10),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
