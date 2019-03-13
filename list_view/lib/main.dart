import 'package:flutter/material.dart';
import 'contacts_list.dart';
import 'contact_model.dart';
import 'dart:convert';
import 'contacts_json_string.dart' as users;

void main(){
  var contacts = (json.decode(users.users) as List).map((c) => Contact.fromJson(c)).toList();
  
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
    var contacts = (json.decode(users.users) as List).map((c) => Contact.fromJson(c)).toList();
    print(contacts.length);
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body:ContactList(
        contacts: contacts,
      ),
    );
  }
}