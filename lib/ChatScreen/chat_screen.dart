import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late String newChat;
  var _controller = TextEditingController();
  List<dynamic> chat = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.chat,
                    size: 30,
                    color: Colors.teal,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Chat',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(4),
                    elevation: 1.0,
                    color: Colors.teal.shade50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Icon(Icons.message),
                        Flexible(
                          child: Text(
                            chat[index],
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: chat.length,
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.tealAccent),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20),
          child: Row(
            children: [
          Flexible(
            child: TextField(
               decoration: new InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
            EdgeInsets.only(left: 15, right: 15),
        hintText: "Write a message ...."),
              controller: _controller,
              cursorColor: Colors.tealAccent,
              onChanged: (newval){
                newChat=newval;
              },
            ),
          ),
              IconButton(onPressed: (){
                setState(() {
                  chat.add(newChat);
                });
                _controller.clear();
                FocusScope.of(context).requestFocus(new FocusNode()); 
              },icon: Icon(Icons.send_rounded),)
            ],
         ),
          ),
        ],
      ),
    );
  }
}
