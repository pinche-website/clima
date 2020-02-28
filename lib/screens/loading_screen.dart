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
      success(pos);
      try
          {
            print(pos.coords.latitude);
            print(pos.coords.longitude);
          } catch (ex) {
        print("Exception thrown: " + ex.toString());
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
// Get the current location
         _getCurrentLocation();

          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
