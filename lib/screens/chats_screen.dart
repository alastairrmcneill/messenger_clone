// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:messenger_clone/models/user_model.dart';
import 'package:messenger_clone/widgets/friends_bar.dart';
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
      color: Colors.red,
      child: ListView(
        children: [
          SearchBar(),
          FriendsBar(),
          CircleAvatar(
            backgroundImage: AssetImage(currentUser.imageUrl),
            radius: 20,
          ),
          ...(allUsers).map((user) {
            return Text(
              user.firstName,
              style: TextStyle(
                fontSize: 30,
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
