import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/locationJS.dart';
import 'package:js/js.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getCurrentPosition() async {
    if (kIsWeb) {
      getCurrentPosition(value) =>
          {
            print(value.coords.latitude),
            print(value.coords.longitude)
          };
    } else {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      print(position);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
// Get the current location
         getCurrentPosition();

          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
