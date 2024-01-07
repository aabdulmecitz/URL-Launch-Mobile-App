import 'package:flutter/material.dart';
import 'package:flutter_go_to_link/MainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go To Link If Click The Icons',
      theme: ThemeData.dark(),
      home: MainScreen(),
    );
  }
}

