// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:messenger_clone/models/user_model.dart';
import 'package:messenger_clone/screens/chats_screen.dart';
import 'package:messenger_clone/screens/people_screen.dart';
import 'package:messenger_clone/widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _myPageController = PageController();
  int _selectedIndex = 0;

  void navBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _myPageController.jumpToPage(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60),
        child: CustomAppBar(
          pageIndex: _selectedIndex,
        ),
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
      body: PageView(
        controller: _myPageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ChatsScreen(),
          PeopleScreen(),
        ],
      ),
    );
  }
}
