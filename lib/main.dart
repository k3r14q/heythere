import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(
        
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Random random = Random();
  Color generatedColor = Color(0xff69ee77);

  Color changeBackgroundColor() {
    generatedColor = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    print(generatedColor);
    return generatedColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: changeBackgroundColor(),
    );
  }
}