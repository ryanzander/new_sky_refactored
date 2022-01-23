import 'dart:math';
import 'package:flutter/material.dart';
import 'package:new_sky/constants.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  Random random = Random();
  int i = 0;
  String title = blueSky;
  Color skyColor = blueColor;

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
        title = blueSky;
        skyColor = blueColor;

        break;
      case 1:
        title = greenSky;
        skyColor = greenColor;

        break;
      case 2:
        title = pinkSky;
        skyColor = pinkColor;

        break;
      case 3:
        title = orangeSky;
        skyColor = orangeColor;

        break;
      case 4:
        title = purpleSky;
        skyColor = purpleColor;

        break;
      case 5:
        title = yellowSky;
        skyColor = yellowColor;

        break;

      default:
        title = blueSky;
        skyColor = blueColor;
    }

    // Call notifyListeners() to tell the View that the ViewModel has changed.
    notifyListeners();
  }
}
