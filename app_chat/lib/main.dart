import 'package:flutter/material.dart';
import 'package:app_chat/pages/chat.dart';
import 'package:app_chat/pages/status.dart';
import 'package:app_chat/pages/calls.dart';
import 'package:app_chat/pages/chats.dart';
import 'home.dart';

void main() => runApp(ChatApp());


class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        // "/" : (context) => HomePage(),
        "/chats" : (context) => Chats(),
        Chat.routeName : (context) => Chat(),
      },
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.tealAccent,
      ),
      home: HomePage(),
    );
  }
}