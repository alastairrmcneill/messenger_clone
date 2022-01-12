// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:messenger_clone/models/message_model.dart';
import 'package:messenger_clone/models/user_model.dart';
import 'package:messenger_clone/screens/messge_screen.dart';
import 'package:messenger_clone/widgets/widgets.dart';

class ConversationTile extends StatelessWidget {
  final Message message;

  const ConversationTile({required this.message});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => MessageScreen(user: message.sender),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
        child: Row(
          children: [
            SizedBox(
              child: UserAvatar(user: message.sender),
              height: 50,
              width: 50,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${message.sender.firstName} ${message.sender.lastName}',
                    style: message.unread
                        ? TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          )
                        : TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w300,
                          ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          message.text,
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: message.unread
                              ? TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                )
                              : TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w300,
                                ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 2,
                              height: 2,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: message.unread ? Colors.white : Colors.grey[400],
                              ),
                            ),
                          ),
                          Text(
                            message.time,
                            style: message.unread
                                ? TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  )
                                : TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w300,
                                  ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
