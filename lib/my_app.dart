import 'package:flutter/material.dart';
import 'package:heythere/custom_background.dart';
import 'package:heythere/lyrics.dart';

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
  final double _textFontSize = 28;
  final double _luminanceLevel = 0.5;
  CustomBackground customBackground = CustomBackground(256, Colors.white);
  Lyrics lyrics = Lyrics();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: customBackground.color,
            child: Text(
              lyrics.lines[lyrics.currentLine],
              style: TextStyle(
                fontSize: _textFontSize,
                color:
                    customBackground.color.computeLuminance() > _luminanceLevel
                        ? Colors.black
                        : Colors.white,
              ),
            ),
          ),
          onTap: () {
            setState(() {
              customBackground.changeColor();
              lyrics.toNextLine();
            });
          },
        ),
      ),
    );
  }
}
