import 'package:flutter/material.dart';
import 'package:lab5_task3/services/fetch_service.dart';
import 'package:lab5_task3/widgets/user_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        body: FutureBuilder(
            future: fetchUsers(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                final users = snapshot.data;
                return ListView.builder(
                    itemCount: users!.length,
                    itemBuilder: (context, index) {
                      return UserListItem(user: users[index]);
                    });
              }
            }));
  }
}
