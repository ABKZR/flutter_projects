import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
    DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Text('Drawer Header'),
    ),
    ListTile(
      title: Text('Item 1'),
      onTap: () {
      },
    ),
    ListTile(
      title: Text('Item 2'),
      onTap: () {
        // Update the state of the app.
        // ...
      },
    ),
    ],
  ),
  
  );
  }
}
