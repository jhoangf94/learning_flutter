import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() {
    return _MyButtonState();
  }
}

class _MyButtonState extends State<MyButton> {

  int index = 0;
  List<String> listWords = ['Flutter', 'Google', 'Android', 'Dart', 'Firebase'];

  void onPressedButton() {
    setState(() {
      index = index < listWords.length - 1 ? index + 1 : 0;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                listWords[index],
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(padding: EdgeInsets.all(5.0),),
              RaisedButton(
                child: Text("Actualizar"),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: onPressedButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
