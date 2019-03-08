import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Mi primer App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primer App"),
        ),
        body: Container(
          child: Center(
            child: Text("Hello word"),
          ),
        ),
      ),
    )
  );
}