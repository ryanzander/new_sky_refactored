import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Random random = Random();
  int _i;
  String _title;
  Color _skyColor;

  @override
  void initState() {
    _i = 0;
    _title = "Blue sky";
    _skyColor = Colors.blue;
    super.initState();
  }

  void _getNewSky() {
    // Get a new random number 0-5
    var i = random.nextInt(6);

    if (i == _i) {
      // If it is the same as the old number, let's change it.
      // If i is 5 we set it to 0, otherwise we add 1 to it.
      _i = i == 5 ? 0 : i + 1;
    } else {
      _i = i;
    }

    // Use the new value of _i to set the _title and _skyColor variables
    switch (_i) {
      case 0:
        _title = "Blue sky";
        _skyColor = Colors.blue;

        break;
      case 1:
        _title = "Green sky";
        _skyColor = Colors.green[300];

        break;
      case 2:
        _title = "Pink sky";
        _skyColor = Colors.pink[200];

        break;
      case 3:
        _title = "Orange sky";
        _skyColor = Colors.orange;

        break;
      case 4:
        _title = "Purple sky";
        _skyColor = Colors.purple[400];

        break;
      case 5:
        _title = "Yellow sky";
        _skyColor = Colors.yellow;

        break;

      default:
        _title = "Blue sky";
        _skyColor = Colors.blue;
    }

    // Finally, call setState() to run the build() method again.
    // The UI will update using the new variable values.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 40.0,
                bottom: 20.0,
              ),
              child: Container(
                height: 300,
                width: 300,
                color: _skyColor,
                child: Image(
                  image: AssetImage("assets/images/beach.png"),
                ),
              ),
            ),
            FlatButton(
              onPressed: _getNewSky,
              child: Text(
                "GET NEW SKY",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
