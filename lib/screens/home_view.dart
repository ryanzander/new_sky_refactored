import 'package:flutter/material.dart';
import 'package:new_sky/constants.dart';
import 'package:new_sky/screens/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                model.title,
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
                  color: model.skyColor,
                  child: Image(
                    image: AssetImage("assets/images/beach.png"),
                  ),
                ),
              ),
              TextButton(
                onPressed: model.getNewSky,
                child: Text(
                  getNewSky,
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
      ),
    );
  }
}
