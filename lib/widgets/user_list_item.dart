import 'package:flutter/material.dart';
import 'package:lab5_task3/screens/profile_screen.dart';
import 'package:lab5_task3/models/user_class.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10.0),
        elevation: 6,
        child: ListTile(
          leading: Hero(
              tag: 'Profile Pic ${user.image}',
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(244, 244, 244, 1.0),
                        width: 3.0),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: ClipOval(
                      child: Image.asset(
                    user.image,
                    fit: BoxFit.cover,
                  )))),
          title: Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(user.role),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Color.fromRGBO(246, 132, 33, 1),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfilePage(
                      user: user,
                    )));
          },
        ));
  }
}
