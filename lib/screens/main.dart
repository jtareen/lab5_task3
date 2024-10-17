import 'package:flutter/material.dart';
import 'package:lab5_task3/screens/profile_screen.dart';
import 'package:lab5_task3/widgets/buttons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Main Screen',
            style: TextStyle(
                color: Color.fromRGBO(244, 244, 244, 1.0),
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(246, 132, 33, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                      child: Hero(
                          tag: 'Profile Pic',
                          child: Image.asset(
                            'assets/images/image.jpeg',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(height: 16.0),
                  PrimaryIconButton(
                      icon: Icons.abc_outlined,
                      text: 'Show Profile',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()));
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
