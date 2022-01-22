import 'dart:math';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  Random random = Random();
  int i = 0;
  String title = "Blue sky";
  Color? skyColor;

  void initModel() {
    skyColor = Colors.blue;
    notifyListeners();
  }

  void getNewSky() {
    // Get a new random number 0-5
    var ran = random.nextInt(6);

    if (ran == i) {
      // If it is the same as the old number, let's change it.
      // If ran is 5 we set it to 0, otherwise we add 1 to it.
      i = ran == 5 ? 0 : ran + 1;
    } else {
      i = ran;
    }

    // Use the new value of i to set the title and skyColor variables
    switch (i) {
      case 0:
        title = "Blue sky";
        skyColor = Colors.blue;

        break;
      case 1:
        title = "Green sky";
        skyColor = Colors.green[300];

        break;
      case 2:
        title = "Pink sky";
        skyColor = Colors.pink[200];

        break;
      case 3:
        title = "Orange sky";
        skyColor = Colors.orange;

        break;
      case 4:
        title = "Purple sky";
        skyColor = Colors.purple[400];

        break;
      case 5:
        title = "Yellow sky";
        skyColor = Colors.yellow;

        break;

      default:
        title = "Blue sky";
        skyColor = Colors.blue;
    }

    // Call notifyListeners() to tell the View that the ViewModel has changed.
    notifyListeners();
  }
}
