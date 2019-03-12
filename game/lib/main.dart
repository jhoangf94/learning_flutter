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

  static final List<MyContainer2> options = [
    MyContainer2(title: "A", color: Colors.yellow, id: 0),
    MyContainer2(title: "B", color: Colors.blue, id: 1),
    MyContainer2(title: "C", color: Colors.red, id: 2),
    MyContainer2(title: "D", color: Colors.green, id: 3)
  ];

  final Game game = Game(options: options);

  @override
  _MyGameState createState() {
    return _MyGameState();
  }
}

class _MyGameState extends State<MyGame> {

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
                    widget.game.start();
                  });
                },
                child: Text("Start Game"),
                color: Colors.orangeAccent,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [_buildWidget(MyGame.options[0]), _buildWidget(MyGame.options[1])],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [_buildWidget(MyGame.options[2]), _buildWidget(MyGame.options[3])],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildWidget(MyContainer2 item){
    if (widget.game.sequence!= null && widget.game.sequence.length <= 0) {return item;}
    int index = widget.game.tap;
    bool isSame = widget.game.options[index] == item;
    if(isSame){
      var newItem = MyContainer2(id: item.id, title: item.title,color: item.color,animate: true,);
      item = null;
      return newItem;
    }
    return item;
  }

}
