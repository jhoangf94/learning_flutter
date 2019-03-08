import 'package:flutter/material.dart';
import 'main.dart';

class MyContainer2 extends StatefulWidget {
  String title;
  Color color;
  int id;

  MyContainer2({this.title, this.color, this.id});

  _MyContainer2State createState() =>
      _MyContainer2State(title: title, color: color, id: id);

  void animation() {
    createState().initState();
  }
}

class _MyContainer2State extends State<MyContainer2> {
  String title;
  Color color;
  int id;

  _MyContainer2State({this.title, this.color, this.id});

  void ani() {
    setState(() {
      Color oldColor = color;
      color = Colors.white10;
      color = oldColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.w100),
          ),
        ),
        onTap: () {
          MyGame.game.addItemToSequenceUser(id);
          if (!MyGame.game.isValidItemTap()) {
            showDialog(
                context: context,
                child: Dialog(
                  child: Text("Perdiste!!"),
                ));
          }
        },
      ),
      color: color,
      width: 100.0,
      height: 100.0,
      margin: EdgeInsets.all(5.0),
    );
  }
}

// class MyContainer extends Container {
//   String title;
//   Color color;
//   int id;

//   MyContainer({this.title, this.color, this.id});

//   void animation(){
//     sets
//   }

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
