import 'package:messenger_clone/models/user_model.dart';

class Message {
  final String text;
  final String time;
  final User sender;

  Message({
    required this.text,
    required this.time,
    required this.sender,
  });
}

List<Message> conversation = [];
