import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class EcommereceUi extends StatelessWidget {
  
  final List<String> imageList =[
    "http://cdn.mos.cms.futurecdn.net/6t8Zh249QiFmVnkQdCCtHK.jpg",
    "https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixid=MnwxMjA3fDF8MHxzZWFyY2h8Mjd8fGxhcHRvcHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://cdn.techjuice.pk/wp-content/uploads/2017/03/windows-10-laptop.jpg",
    "https://www.xda-developers.com/files/2021/05/macbook-pro-16-inch-concept-1024x586.jpg",
    "https://www.theapplepost.com/wp-content/uploads/2019/02/MacBook-Pro-concept-white-1024x640.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecom App UI",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(padding: EdgeInsets.only(right: 15),
          child: Icon(Icons.notifications,color: Colors.black,))
        ],
        backgroundColor: Colors.white,
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: true,
          
        ),
        items: imageList.map((e) => ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: 
              Image.network(e,height: 200,width: 1000,fit: BoxFit.cover,),

          )).toList(),
        
      ),
    );
  }
}
