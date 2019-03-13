import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'main.dart';
import 'game.dart' as game;

class MyContainer2 extends StatefulWidget {
  String title;
  Color color;
  int id;
  bool animate;

  MyContainer2({this.title, this.color, this.id, this.animate = false});

  _MyContainer2State createState() => _MyContainer2State();

  void elState(){
    createState().myState();
  }
}

class _MyContainer2State extends State<MyContainer2> {


  void myState(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return _animatedContainer();
  }

  Widget _animatedContainer() {
    return _bluidWidgetWithOutAnimaion();
  }

  Widget _bluidWidgetWithOutAnimaion() {
    if (widget.animate) {
      setState(() {});
    }


  }

  Widget _change() {
    if (widget.animate) {
      widget.animate = false;
      return Icon(Icons.star_border);
    }
    return Text(widget.title,
        style: TextStyle(
            fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold));
  }

  void _onTap() {
    setState(() {});
/*     MyGame.game.addItemToSequenceUser(widget.id);
    if (!MyGame.game.isValidItemTap()) {
      showDialog(
          context: context,
          child: AlertDialog(
            title: Text("Eres un manco"),
            content:  Text("Perdiste!!"),
          ));
    } */
  }
}
