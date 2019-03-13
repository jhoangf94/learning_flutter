import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(ChatApp());


class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      home: HomePage(),
    );
  }
}