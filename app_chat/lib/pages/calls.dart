import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  final Widget child;

  Calls({Key key, this.child}) : super(key: key);

  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(Icons.phone_android),
      ),
    );
  }
}