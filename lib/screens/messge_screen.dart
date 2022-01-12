import 'package:flutter/material.dart';
import 'package:messenger_clone/models/message_model.dart';
import 'package:messenger_clone/models/user_model.dart';
import 'package:messenger_clone/widgets/widgets.dart';

class MessageScreen extends StatelessWidget {
  late User user;
  late List<Message> conversation;

  MessageScreen({required user}) {
    this.user = user;
    conversation = sampleConversation.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.purple,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Transform.translate(
          offset: const Offset(-10, 0),
          child: Row(
            children: [
              SizedBox(
                child: UserAvatar(user: user),
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.firstName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  user.isOnline
                      ? Text(
                          'Online',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      : Text(
                          'Active 5 hours ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                ],
              )
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.phone_rounded,
              color: Colors.purple,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.videocam_rounded,
              color: Colors.purple,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.info,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 0),
              reverse: true,
              itemCount: conversation.length,
              itemBuilder: (BuildContext context, int index) {
                final message = conversation[index];
                bool isMe = message.sender.id == currentUser.id;
                return _buildMessage(message.text, isMe);
              },
            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    );
  }

  Widget _buildMessage(String text, bool isMe) {
    return Text(
      text,
      textAlign: isMe ? TextAlign.right : TextAlign.left,
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      height: 70,
      color: Colors.red,
    );
  }
}
