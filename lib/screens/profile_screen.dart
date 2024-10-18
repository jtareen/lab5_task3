import 'package:flutter/material.dart';
import 'package:lab5_task3/models/user_class.dart';
import 'package:lab5_task3/widgets/buttons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Color.fromRGBO(244, 244, 244, 1.0),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(246, 132, 33, 1),
      ),
      backgroundColor: const Color.fromRGBO(246, 132, 33, 1),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
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
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              user.name,
              style: const TextStyle(
                  color: Color.fromRGBO(244, 244, 244, 1.0),
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              '${user.location.toUpperCase()} - ${user.role.toUpperCase()}',
              style: const TextStyle(
                  color: Color.fromRGBO(243, 205, 171, 1.0),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: PrimaryIconButton(
                icon: Icons.wifi_tethering_error_outlined,
                text: 'Give Kudos',
                onPressed: () {},
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryIconButton(icon: Icons.phone, onPressed: () {}),
                PrimaryIconButton(
                    icon: Icons.chat_bubble_outline, onPressed: () {}),
                PrimaryIconButton(icon: Icons.email_outlined, onPressed: () {}),
                PrimaryIconButton(icon: Icons.calendar_today, onPressed: () {}),
              ],
            ),
          )
        ],
      )),
    );
  }
}
