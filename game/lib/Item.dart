import 'package:flutter/material.dart';

class Item extends StatelessWidget {

  final String title;
  final int id;
  final Color color;
  bool valid = false;

  Item({this.title, this.color, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
            child: Text(title,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
        width: 140,
        height: 140,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
      onTap: () {
        if(!valid){
          showDialog(
            context: context,
            child: AlertDialog(
              title: Text("Opps!!"),
            )
          );
        }
      },
    );
  }

}
