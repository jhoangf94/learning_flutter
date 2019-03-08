import 'package:flutter/material.dart';
import 'main.dart';

class MyContainer extends Container {
  String title;
  Color color;
  int id;

  MyContainer({this.title, this.color, this.id});

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
