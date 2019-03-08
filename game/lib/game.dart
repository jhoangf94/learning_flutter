import 'package:flutter/material.dart';
import 'myContainer.dart';
import 'dart:math';
import 'dart:io';

class Game {
  
  final List<MyContainer> options;
  List<int> sequence = [];
  List<int> sequenceUser = [];
  int tap = 0;

  Game({this.options});

  void start() {
    tap = 0;
    sequence = [];
    sequenceUser = [];
    generateNextItem();
  }

  Future waitSeconds(Duration d) => Future.delayed(d);

  void generateNextItem() {
    // Genera un indice random
    int randomIndex = Random().nextInt(options.length - 1);
    sequence.add(randomIndex);
    // Mostrar la secuencia al usuario
    sequence.forEach((i) {
      print("${options[i].title}");
      options[i].color = Colors.white12;
      sleep(const Duration(seconds: 2));
    });
  }

  void addItemToSequenceUser(int idItem) {
    sequenceUser.add(idItem);
  }

  bool isValidItemTap() {
    if (sequence[tap] == sequenceUser[tap]) {
      tap++;
      if (sequence.length == sequenceUser.length) {
        generateNextItem();
        tap = 0;
        sequenceUser.clear();
      }
      return true;
    }
    return false;
  }
}