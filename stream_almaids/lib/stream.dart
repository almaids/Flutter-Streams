import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.pink,
    Colors.pinkAccent,
    Color(0xFFF8BBD0), 
    Color(0xFFD81B60), 
    Color(0xFFFFC1E3), 
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t){
        int index = t % colors.length;
        return colors[index];
      });
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addRandomNumber(){
    Random random = Random();
    int myNum = random.nextInt(10);
    addNumberToSink(myNum);
    //addError();
  }

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  addError(){
    controller.sink.addError('error');
  }
}
