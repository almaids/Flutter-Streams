import 'dart:async';
import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.pink,
    Colors.pinkAccent,
    Colors.deepOrangeAccent,
    Colors.purpleAccent,
    Colors.redAccent,
  ];

  Stream<Color> getColors() async* {
    for (Color color in colors) {
      await Future.delayed(const Duration(seconds: 1));
      yield color;
    }
  }
}
