import 'package:flutter/material.dart';
import 'package:movieapp/home_view.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
              child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeView(
                  title: '',
                );
              }));
            },
            child: const Text(
              "Logout Here",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.purple),
          ))
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(label: Text("First Name")),
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("Surname")),
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("Email")),
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("Password")),
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("Verify Password")),
            ),
          ],
        ),
      ),
    );
  }
}
