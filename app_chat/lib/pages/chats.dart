import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  final Widget child;

  Chats({Key key, this.child}) : super(key: key);

  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(Icons.local_movies),
      ),
    );
  }
}