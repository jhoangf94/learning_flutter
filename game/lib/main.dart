import 'package:flutter/material.dart';
import 'myContainer.dart';
import 'game.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyGame(),
  ));
}

class MyGame extends StatefulWidget {
  static List<MyContainer> options = [
    MyContainer(title: "A", color: Colors.yellow, id: 0),
    MyContainer(title: "B", color: Colors.blue, id: 1),
    MyContainer(title: "C", color: Colors.red, id: 2),
    MyContainer(title: "D", color: Colors.green, id: 3)
  ];

  static int tap = 0;
  static Game game = Game(options: options);

  @override
  _MyGameState createState() {
    return _MyGameState(options: options, game: game);
  }
}

class _MyGameState extends State<MyGame> {

  List<MyContainer> options;
  Game game;

  _MyGameState({this.options, this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Game"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  game.start();
                },
                child: Text("Start Game"),
                color: Colors.orangeAccent,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [options[0], options[1]],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [options[2], options[3]],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
