//Change Notifier

//this is CounterNotifire

import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  //variable
  int counter = 0;

  //methods
  //Increment
  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void resetCounter() {
    counter = 0;
    notifyListeners();
  }

  void dicrementCounter() {
    if (counter <= 0) {
      counter = 0;
    } else {
      counter -= 1;
    }
    notifyListeners();
  }
}
