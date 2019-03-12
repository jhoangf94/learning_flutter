import 'package:flutter/material.dart';
import 'contact_widget.dart';
import 'contact_model.dart';
import 'dart:convert';
// import 'contacts_json_string.dart' as users;

class ContactList extends StatelessWidget {
  final List<Contact> contacts = [];
  // final Map userMap = json.decode(users.users);

  @override
  Widget build(BuildContext context) {
    // userMap.forEach((c) => contacts.add(Contact.fromJson(c)));

    return ListView(
      children: _mapContactsWidget(),
    );
  }

  List<Widget> _mapContactsWidget() {
    return contacts.map((c) => ContactListTile(contact: c)).toList();
  }
}
