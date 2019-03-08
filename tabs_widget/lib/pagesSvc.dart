import 'package:flutter/material.dart';

class MyCustomPage extends StatelessWidget {
  
  final IconData _icon;
  final String _text;

  MyCustomPage(this._icon, this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                _icon,
                size: 200.0,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(_text),
              )
            ],
          ),
        ));
  }
}
