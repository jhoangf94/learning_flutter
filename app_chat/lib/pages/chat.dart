import 'package:flutter/material.dart';
import 'package:app_chat/models/chat_model.dart';

class Chat extends StatefulWidget {
  static final routeName = "/chat";
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final ChatModel chat = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(backgroundImage: NetworkImage(chat.imageUrl)),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 5),
            ),
            Text(chat.name,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w300)),
          ],
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  chat.message,
                  style: TextStyle(fontSize: 14),
                ),
              Text(
                chat.time,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
          )
        ],
      ),
    );
  }
}
