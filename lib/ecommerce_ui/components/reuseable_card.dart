
import 'package:flutter/material.dart';

class ReuseableCardWidget extends StatelessWidget {
  const ReuseableCardWidget({
    Key? key,
    required this.imageList,required this.index, required this.name
  }) : super(key: key);

  final List<String> imageList;
  final String name;
final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(80),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage(imageList[index]))
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
