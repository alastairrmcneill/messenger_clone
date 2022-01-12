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

List<Message> chats = [
  Message(
    sender: cameronAgnew,
    time: '5:30 PM',
    text: 'Hey man, stoked for you coming to play Alba!',
    unread: true,
  ),
  Message(
    sender: cameronMackie,
    time: '5:35 PM',
    text: 'Buzzing about Alba!',
    unread: true,
  ),
  Message(
    sender: jonnyShaw,
    time: '4:15 PM',
    text: 'All set for skiing?',
    unread: false,
  ),
  Message(
    sender: leanneRule,
    time: '2:47 PM',
    text: 'Weird, we never use facebook! Message me on WhatsApp instead!',
    unread: false,
  ),
  Message(
    sender: christineIrvine,
    time: '11:58 AM',
    text: 'How good is Leanne at skiing? Will she need lessons? We can arrange in to groups if that would be better for her and everyone else.',
    unread: true,
  ),
  Message(
    sender: jackHughes,
    time: '10:17AM',
    text: 'Congrats about the job man!',
    unread: false,
  ),
  Message(
    sender: laurenBurgess,
    time: '4:15 PM',
    text: 'All set for skiing?',
    unread: false,
  ),
  Message(
    sender: aislingBarton,
    time: '2:47 PM',
    text: 'Weird, we never use facebook! Message me on WhatsApp instead!',
    unread: false,
  ),
  Message(
    sender: jakeBurgess,
    time: '11:58 AM',
    text: 'How good is Leanne at skiing? Will she need lessons? We can arrange in to groups if that would be better for her and everyone else.',
    unread: false,
  ),
  Message(
    sender: gemmaHenry,
    time: '10:17AM',
    text: 'Congrats about the job!',
    unread: false,
  ),
];

List<Message> sampleConversation = [
  Message(
    sender: jonnyShaw,
    time: '10:17AM',
    text: 'So we have some decent trousers and a pair of gloves!',
    unread: false,
  ),
  Message(
    sender: jonnyShaw,
    time: '10:17AM',
    text: 'Anything else she desparately needs that I might be able to find?',
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '10:20AM',
    text: 'She has some gloves so all good there. Trousers and jacket at probably the main thing and we can hire everything else?',
    unread: false,
  ),
  Message(
    sender: jonnyShaw,
    time: '10:25AM',
    text: 'Ok nice one',
    unread: false,
  ),
  Message(
    sender: jonnyShaw,
    time: '10:25AM',
    text: 'I\'ll send a photo in a few mins after my shower.',
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '10:30AM',
    text: 'That\'s awesome thanks!',
    unread: false,
  ),
];
