import 'package:flutter/material.dart';
import 'contact_widget.dart';
import 'contact_model.dart';

class ContactList extends StatelessWidget {

  final List<Contact> contacts;

  ContactList({this.contacts});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _mapContactsWidget(),
    );
  }

  List<Widget> _mapContactsWidget() {
    return contacts.map((c) => ContactListTile(contact: c)).toList();
  }
}
