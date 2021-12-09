import 'package:flutter/material.dart';
import 'package:movieapp/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Login UI',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomeView(title: 'My Login UI'),
    );
  }
}
