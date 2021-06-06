import 'package:flutter/material.dart';
import 'package:flutter_project/food_app_ui/home_page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
        body: HomePage(),
    ),
    );
  }
}
class PTR extends StatelessWidget {
  const PTR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numItems = 40;
    final _biggerFont = const TextStyle(fontSize: 20.0);
    Widget _buildRow(int idx) {
      return ListTile(
        leading: CircleAvatar(
          child: Text('$idx'),
        ),
        title: Text(
          'Item $idx',
          style: _biggerFont,
        ),
        trailing: Icon(Icons.dashboard),
      );
    }
    return ListView.builder(
      itemCount: numItems * 2,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2 + 1;
        return _buildRow(index);
      },
    );
  }
}
