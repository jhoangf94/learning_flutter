import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyTextfield(),
  ));
}

class MyTextfield extends StatefulWidget {
  @override
  _MyTextfieldState createState() => new _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  
  final TextEditingController textFieldController =TextEditingController();
  String listOfItems = "";

  void addNewItem(String value) {
    setState(() {
      listOfItems += "\n" + value;
      textFieldController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: "Escriba el nuevo elemneto de la lista..."),
                onSubmitted: (value) => addNewItem(
                    value), // se ejecuta cuando se presiona sobre el enter del teclado
                    controller: textFieldController,
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Text(listOfItems),
              RaisedButton(
                onPressed: (){
                  setState(() {
                    listOfItems = ""; 
                  });
                },
                child: Text("Limpiar"),
                color: Colors.redAccent,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
