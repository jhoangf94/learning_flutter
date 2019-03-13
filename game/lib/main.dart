import 'package:flutter/material.dart';
import 'Item.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyGame(),
  ));
}

class MyGame extends StatefulWidget {
/*   final List<MyContainer2> options = [
    MyContainer2(title: "A", color: Colors.yellow, id: 0),
    MyContainer2(title: "B", color: Colors.blue, id: 1),
    MyContainer2(title: "C", color: Colors.red, id: 2),
    MyContainer2(title: "D", color: Colors.green, id: 3)
  ]; */

  static void tap() {
    print("Tap");
  }

  @override
  _MyGameState createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  final List<Item> options = [
    Item(title: "A", color: Colors.yellow, id: 0),
    Item(title: "B", color: Colors.blue, id: 1),
    Item(title: "C", color: Colors.red, id: 2),
    Item(title: "D", color: Colors.green, id: 3)
  ];

  List<int> sequence = [];
  List<int> sequenceUser = [];
  int tap = 0;
  bool inGame = false;

  void start() async {
    tap = 0;
    inGame = false;
    sequence = [];
    sequenceUser = [];
    await generateNextItem();
  }

  Future waitSeconds(Duration d) => Future.delayed(d);

  Future<void> generateNextItem() async {
    // Genera un indice random
    int randomIndex = Random().nextInt(options.length - 1);
    sequence.add(randomIndex);
    for (var i in sequence) {
      var item = options[i];
      setState(() {
        var color = item.color.withOpacity(0.2);
        options[i] = Item(title: item.title, color: color, id: item.id);
      });
      await waitSeconds(Duration(milliseconds: 400));
      setState(() {
        options[i] = item;
      });
    }
    print(sequence);
  }

  void addItemToSequenceUser(int idItem) {
    sequenceUser.add(idItem);
  }

  bool isValidItemTap() {
    if (sequence[tap] == sequenceUser[tap]) {
      tap++;
      if (sequence.length == sequenceUser.length) {
        generateNextItem();
        tap = 0;
        sequenceUser.clear();
      }
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    start();
                  });
                },
                child: Text("Start Game"),
                color: Colors.yellowAccent,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25.0),
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

/*   Widget _buildWidget(MyContainer2 item) {
    if (MyGame.game.sequence != null && MyGame.game.sequence.length <= 0) {
      return item;
    }
    int index = MyGame.game.tap;
    bool isSame = widget.options[index] == item;
    if (isSame) {
      var newItem = MyContainer2(
          id: item.id, title: item.title, color: item.color, animate: true);
      item = null;
      return newItem;
    }
    return item;
  } */
}
