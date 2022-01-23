import 'package:flutter/material.dart';
import 'package:new_sky/constants.dart';
import 'package:new_sky/services/math_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int i = 0;
  String title = blueSky;
  Color skyColor = blueColor;

  void getNewSky() {
    // We get the instance of the MathService singleton
    // And call its getNewRandom() function to change the value of i
    i = MathService.getInstance().getNewRandom(oldNumber: i, max: 6);

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
