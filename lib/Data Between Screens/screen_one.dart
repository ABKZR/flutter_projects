import 'package:flutter/material.dart';
import 'package:flutter_project/Data%20Between%20Screens/second_screen.dart';
class news extends StatelessWidget {
  late String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(16.0),
              ),
              prefixIcon: Icon(Icons.add, color: Colors.green[400],),
              contentPadding: EdgeInsets.only(left: 30),
            ),
            onChanged: (text) {
              value = text;
            },
          ),
          SizedBox(
            height: 50,
          ),
          TextButton.icon(
            onPressed: () {
              print(value);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => second(
                    value: value,
                  ),
                ),
              );
            },
            icon: Icon(Icons.add_circle_outline_rounded),
            label: Text('Click Me'),
          )
        ],
      ),
    );
  }
}
