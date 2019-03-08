import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pantalla #1'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (context) => NewPage()
              );
              Navigator.push(context,route);
            },
            child: Text("Ir a la pagína siguiente"),
          ),
        ));
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            title: Text('Pantalla #2'),
          ),
          body: Center(
            child: RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Ir Atras"),
            ),
          )
        );
  }
}