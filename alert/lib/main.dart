import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyAlertDialog(),
      debugShowCheckedModeBanner: false,
    ));

class MyAlertDialog extends StatefulWidget {
  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

enum AlertDialogAction {
  NO,
  YES
}

class _MyAlertDialogState extends State<MyAlertDialog> {

  String text = "";

  void _showAlert(String value) {
    AlertDialog alert = AlertDialog(
      title: Text("Mi alerta"),
      content: Text(value),
      actions: <Widget>[
        FlatButton(child: Text("SI"),onPressed: () => _showAlertDialogAction(AlertDialogAction.YES),),
        FlatButton(child: Text("NO"), onPressed: () => _showAlertDialogAction(AlertDialogAction.NO),)
      ],
    );

    showDialog(context: context, child: alert);
  }

  void _showAlertDialogAction( AlertDialogAction action){
    print("La acción precionada fue $action");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert dialog'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "Escribe algo aquí"),
                onChanged: (value) => text = value,
              ),
              RaisedButton(
                child: Text("Ver alerta"),
                onPressed: () => _showAlert(text),
              )
            ],
          ),
        ),
      ),
    );
  }
}
