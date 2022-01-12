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
      body: Container(
        color: Colors.black,
        child: Column(
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
      ),
    );
  }

  Widget _buildMessage(String text, bool isMe) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: isMe
          ? const EdgeInsets.only(
              left: 60,
              top: 8,
              bottom: 8,
              right: 20,
            )
          : const EdgeInsets.only(
              left: 20,
              top: 8,
              bottom: 8,
              right: 60,
            ),
      decoration: BoxDecoration(
        color: isMe ? Colors.blue : Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5,
        ),
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.apps,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.photo,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.mic,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey[800],
                ),
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration.collapsed(
                              hintText: 'Aa',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Icon(
            Icons.thumb_up_rounded,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
