import 'package:flutter/material.dart';

class FriendsBar extends StatelessWidget {
  const FriendsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.amber,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
