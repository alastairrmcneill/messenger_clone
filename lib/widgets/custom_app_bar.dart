import 'package:flutter/material.dart';
import 'package:messenger_clone/models/user_model.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Chats',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          )),
      centerTitle: false,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
        child: CircleAvatar(
          backgroundImage: AssetImage(currentUser.imageUrl),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[800],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () => print('Camera pressed'),
              icon: const Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 10, 8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[800],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () => print('Camera pressed'),
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
