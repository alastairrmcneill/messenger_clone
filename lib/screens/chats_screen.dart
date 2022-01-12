// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:messenger_clone/models/message_model.dart';
import 'package:messenger_clone/models/user_model.dart';
import 'package:messenger_clone/widgets/widgets.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: [
          SearchBar(),
          FriendsBar(),
          ...(chats).map((chat) {
            return ConversationTile(message: chat);
          }).toList()
        ],
      ),
    );
  }
}
