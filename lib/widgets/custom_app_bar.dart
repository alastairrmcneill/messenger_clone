import 'package:flutter/material.dart';
import 'package:messenger_clone/models/user_model.dart';

class CustomAppBar extends StatelessWidget {
  late int index;
  late String titleText;
  CustomAppBar({required pageIndex}) {
    index = pageIndex;
    index == 0 ? titleText = 'Chats' : titleText = 'People';
  }

  List<Widget> _buildActions() {
    if (index == 0) {
      return [
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
      ];
    } else {
      return [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 10, 8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[800],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () => print('Contacts pressed'),
              icon: const Icon(
                Icons.contacts,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          )),
      centerTitle: false,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
        child: GestureDetector(
          child: CircleAvatar(
            backgroundImage: AssetImage(currentUser.imageUrl),
          ),
          onTap: () => {print('User profile')},
        ),
      ),
      actions: _buildActions(),
    );
  }
}
