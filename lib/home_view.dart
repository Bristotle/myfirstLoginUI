import 'package:flutter/material.dart';
import 'package:movieapp/login.dart';
import 'package:movieapp/signup.dart';

import 'login.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Akwaaba Onua'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
            radius: 100,
            child: SizedBox(
              height: 50,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(label: Text("Login")),
          ),
          const SizedBox(
            height: 70,
          ),
          TextFormField(
            decoration: const InputDecoration(label: Text("Password")),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.purple),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: ()  {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}


