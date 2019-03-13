import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  final Widget child;

  Status({Key key, this.child}) : super(key: key);

  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(Icons.favorite),
      ),
    );
  }
}