import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

///
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

///
class HomePage extends StatefulWidget {
  ///
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  int maxColorValue = 256;
  Color customBackgroundColor = Colors.white;
  double textFontSize = 36;
  double luminanceLevel = 0.5;

  void changeBackgroundColor() {
    customBackgroundColor = Color.fromRGBO(
      random.nextInt(maxColorValue),
      random.nextInt(maxColorValue),
      random.nextInt(maxColorValue),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: customBackgroundColor,
            child: Text(
              "Hey there!",
              style: TextStyle(
                fontSize: textFontSize,
                color: customBackgroundColor.computeLuminance() > luminanceLevel
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
          onTap: () {
            setState(() {
              changeBackgroundColor();
            });
          },
        ),
      ),
    );
  }
}
