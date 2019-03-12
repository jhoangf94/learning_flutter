import 'package:flutter/material.dart';
import 'contacts_list.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body:ContactList(),
    );
  }
}