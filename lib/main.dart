import 'package:flutter/material.dart';
import 'package:messenger_clone/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger Clone',
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.black,
              secondary: Colors.grey,
            ),
      ),
      home: const MyHomePage(),
    );
  }
}
