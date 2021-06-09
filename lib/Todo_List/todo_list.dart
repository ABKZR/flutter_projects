import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.orange,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List todos = [];
  String input = "";
  @override
  void initState() {
    super.initState();
    todos.add("Item1");
    todos.add("Item2");
    todos.add("Item3");
    todos.add("Item4");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(todos[index]),
            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                title: Text(todos[index]),
                trailing: IconButton(
                  icon: Icon(Icons.delete,color: Colors.red,),
                onPressed: (){
                    setState(() {
                      todos.removeAt(index);
                    });
                },
                ),
              ),

            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  title: Text("Add Todo Item"),
                  content: TextField(
                    onChanged: (String value) {
                      input = value;
                    },
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          todos.add(input);
                        });
                        Navigator.pop(context);
                      },
                      child: Text("Add"),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
