import 'package:flutter/material.dart';
import 'package:messenger_clone/models/user_model.dart';
import 'package:messenger_clone/widgets/widgets.dart';

class PeopleScreen extends StatefulWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  _PeopleScreenState createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: ListView.builder(
          itemCount: allUsers.length,
          itemBuilder: (BuildContext context, int index) {
            final user = allUsers[index];
            return GestureDetector(
              onTap: () => {print('IMPLEMENT - Go to conversation with ${user.firstName}')},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    SizedBox(
                      child: UserAvatar(user: user),
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      '${user.firstName} ${user.lastName}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
