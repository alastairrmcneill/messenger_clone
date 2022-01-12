import 'package:flutter/material.dart';
import 'package:messenger_clone/models/user_model.dart';

class UserAvatar extends StatelessWidget {
  final User user;

  const UserAvatar({required this.user});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(user.imageUrl),
          radius: 25,
        ),
        user.isOnline
            ? Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightGreenAccent[400],
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              )
            : const Text(''),
      ],
    );
  }
}
