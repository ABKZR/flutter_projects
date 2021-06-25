import 'package:flutter/material.dart';
 import 'package:flutter_project/Data%20Between%20Screens/second_screen.dart';

// // ignore: must_be_immutable
// class News extends StatelessWidget {
//   late String value;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 50,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),
//                   borderRadius: BorderRadius.circular(16.0),
//                 ),
//                 prefixIcon: Icon(Icons.add, color: Colors.green[400],),
//                 contentPadding: EdgeInsets.only(left: 30),
//               ),
//               onChanged: (text) {
//                 value = text;
//               },
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             TextButton.icon(
//               onPressed: () {
//                 print(value);
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Second(
//                       value: value,
//                     ),
//                   ),
//                 );
//               },
//               icon: Icon(Icons.add_circle_outline_rounded),
//               label: Text('Click Me'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore: must_be_immutable
class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              GridView.count(crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: [
                ReuseableGridViewCard(icons: Icons.wifi,name: "Wi-Fi",color: Colors.brown,),
                 ReuseableGridViewCard(color: Colors.blue, icons: Icons.bluetooth, name: 'Bluetooth'),
              ],
              ),
              GridView.count(crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: NeverScrollableScrollPhysics()
              ,children: List.generate(201, (index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Second(value: index.toString(),)));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 5,right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    color: Colors.teal,
                    ),
                    
                    child: Center(child: Text("item: $index",style: TextStyle(fontWeight:FontWeight.bold),)),
                  ),
                );
              }
              ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class ReuseableGridViewCard extends StatelessWidget {
  const ReuseableGridViewCard({
    Key? key,required this.color ,required this.icons, required this.name
  }) : super(key: key);
final IconData icons;
final String name;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Stack(children: [
      Center(child: Icon(icons,color: Colors.white,size: 40,)),
      Container(
        padding: EdgeInsets.only(top:150),
        child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      )  
      ],),
    );
  }
}