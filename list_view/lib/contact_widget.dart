import 'package:flutter/material.dart';
import 'contact_model.dart';

class ContactListTile extends StatelessWidget {
  final Contact contact;
  final Color backgoundCircularImage;

  ContactListTile({this.contact, this.backgoundCircularImage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(contact.name[0]),),
      title: Text(contact.name),
      subtitle: Text(contact.email),
    );
  }
}