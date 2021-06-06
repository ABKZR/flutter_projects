import 'package:flutter/material.dart';

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
    return
      Scaffold(
        body: ListView.builder(
          itemCount: numItems * 2,
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (BuildContext context, int i) {
            if (i.isOdd) return Divider();
            final index = i ~/ 2 + 1;
            return _buildRow(index);
          },
        ),

      );
  }
}
