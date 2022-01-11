import 'package:flutter/material.dart';
import 'package:messenger_clone/models/user_model.dart';

class FriendsBar extends StatelessWidget {
  const FriendsBar({Key? key}) : super(key: key);

  Widget createChatHead(User user) {
    if (user.isOnline) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Column(
          children: [
            SizedBox(
              child: Stack(
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
                      : Text(''),
                ],
              ),
              height: 50,
              width: 50,
            ),
            Text(
              user.firstName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              user.lastName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      );
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Column(
              children: [
                SizedBox(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[800],
                    child: const Icon(
                      Icons.video_call_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  height: 50,
                  width: 50,
                ),
                const Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Text(
                  'room',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          ...(allUsers).map((user) {
            return createChatHead(user);
          }).toList()
        ],
      ),
    );
  }
}
