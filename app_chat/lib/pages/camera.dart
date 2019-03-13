import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  final Widget child;

  Camera({Key key, this.child}) : super(key: key);

  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(Icons.save),
      ),
    );
  }
}