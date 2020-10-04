import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Screens/DriverFoundScreen.dart';
class WaitingScreen extends StatefulWidget {
  @override
  _WaitingScreenState createState() => _WaitingScreenState();

}

class _WaitingScreenState extends State<WaitingScreen> {
  bool paired = false;

  @override
  moveon() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return DriverFoundScreen();
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Thank you!',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 200.0),
                      Text(
                        'We are paring you up with the driver...',
                        style: TextStyle(
                          color: Colors.purple,
                          fontFamily: 'OpenSans',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (paired == true)
                        moveon(),
                    ],
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

