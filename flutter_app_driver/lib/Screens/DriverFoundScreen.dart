import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:flutter_app_driver/Screens/MapScreen.dart';


class DriverFoundScreen extends StatefulWidget {
  @override
  _DriverFoundScreenState createState() => _DriverFoundScreenState();

}

class _DriverFoundScreenState extends State<DriverFoundScreen> {


  //////////////////////////////// time_lapse ////////////
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MapScreen()
    )
    );
  }
/////////////////////////////////////////////////////////////


  Widget _buildPhoneBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        // onPressed: () => print('Login Button Pressed'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                // return SelectScreen();
              },
            ),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFFF3E5F5),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
            children: [
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Icon(Icons.phone),
                ),
              ),
              TextSpan(text: 'Phone'),
            ]
          ),
        ),
      ),
    );
  }

  Widget _buildVideoBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        // onPressed: () => print('Login Button Pressed'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                // return SelectScreen();
              },
            ),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.deepPurple,
        child: RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
              children: [
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.video_call, color:Colors.white),
                  ),
                ),
                TextSpan(text: 'Video Call'),
              ]
          ),
        ),
      ),
    );
  }


  // Widget _buildDriverProfile() {
  //   return Container(
  //       padding: EdgeInsets.symmetric(vertical: 25.0),
  //       width: double.infinity,
  //       child:
  //   );
  // }



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
                    vertical: 70.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'User Found!\nAlex will be the user!',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                          width: 200.0,
                          height: 200.0,

                          // width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFD6D6D6),
                              shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            ),
                            // borderRadius: BorderRadius.circular(20),
                          ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        child: Text(
                          'Alex',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      _buildPhoneBtn(),
                      SizedBox(height: 3.0),
                      _buildVideoBtn(),



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
