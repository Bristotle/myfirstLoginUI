import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Your Account Here"),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          const Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.pink,
      ),
      body: Card(),
    );

    Padding(
      padding: const EdgeInsets.all(6.5),
      child: Card(
        elevation: 10,
        color: Colors.green,
        child: ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1637361888505-265fc6191786?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          ),
          title: Text("Justice Mark Arthur"),
          subtitle: Row(
            children: [
              Icon(Icons.done_all),
              Text("Bro please i know things are but let God be your light ")
            ],
          ),
        ),
      ),
    );
  }
}
