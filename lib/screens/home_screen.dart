import 'package:flutter/material.dart';
import 'package:messenger_clone/models/user_model.dart';
import 'package:messenger_clone/widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void navBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: const CustomAppBar(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: navBarTapped,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_rounded,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: 'People',
          ),
        ],
      ),
    );
  }
}
