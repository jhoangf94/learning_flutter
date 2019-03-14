import 'package:flutter/material.dart';
import 'package:app_chat/models/chat_model.dart';
import 'chat.dart';

class Chats extends StatefulWidget {
  final Widget child;

  Chats({Key key, this.child}) : super(key: key);

  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  // navega a la pantalla del chat selecionado
  void _goToChat( ChatModel chat) {
    Navigator.pushNamed(context, Chat.routeName, arguments: chat);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataTest.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(height: 10.0),
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(dataTest[i].imageUrl),),
            trailing: Text(dataTest[i].time, style: TextStyle(fontSize: 12, color: Colors.grey)),
            title: Text(dataTest[i].name, style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(dataTest[i].message),
            onTap: () => _goToChat(dataTest[i]),
          )
        ],
      ),

    );
  }
}