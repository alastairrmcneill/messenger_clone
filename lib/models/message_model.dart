import 'package:messenger_clone/models/user_model.dart';

class Message {
  final String text;
  final String time;
  final User sender;
  final bool unread;

  Message({
    required this.text,
    required this.time,
    required this.sender,
    required this.unread,
  });
}

List<Message> conversation = [
  Message(
    sender: cameronAgnew,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
];
