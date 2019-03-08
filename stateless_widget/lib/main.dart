import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // se deshabilita la etiqueta debug
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double iconSize = 40.0;
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateless Widget"),
        ),
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MyCard(
                  title: "Flutter",
                  icon: Icon(Icons.favorite,
                      color: Colors.redAccent, size: iconSize),
                ),
                MyCard(
                  title: "Dart",
                  icon: Icon(Icons.star,
                      color: Colors.blueAccent, size: iconSize),
                ),
                MyCard(
                  title: "Google",
                  icon: Icon(Icons.thumb_up,
                      color: Colors.greenAccent, size: iconSize),
                )
              ],
            ),
          ),
        ));
  }
}

class MyCard extends StatelessWidget {
  final String title;
  final Icon icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Text(
                this.title,
                style: textStyle,
              ),
              this.icon
            ],
          ),
        ),
      ),
    );
  }
}
