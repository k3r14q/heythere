import 'dart:math';
import 'package:flutter/material.dart';

///
class CustomBackground {
  final Random _random = Random();
  final int _maxColorValue;
  Color _color;

  /// Getter for _color
  Color get color {
    return _color;
  }

  /// Constructor
  CustomBackground(this._maxColorValue, this._color);

  /// Method for generating color
  Color changeColor() => _color = Color.fromRGBO(
        _random.nextInt(_maxColorValue),
        _random.nextInt(_maxColorValue),
        _random.nextInt(_maxColorValue),
        1,
      );
}
