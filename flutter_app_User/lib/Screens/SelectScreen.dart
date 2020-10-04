import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/utilities/c.dart';
import 'package:flutter_app/Screens/MultiSelectionExample.dart';
import 'package:flutter_app/Screens/Service.dart';
import 'package:flutter_app/Screens/COVIDScreen.dart';

class SelectScreen extends StatefulWidget {

  @override
  _SelectScreenState createState() => _SelectScreenState();

}

class _SelectScreenState extends State<SelectScreen> {
  List<String> sortFilter = [
    'Sort by name A-Z',
    'Sort by release date',
    'Sort by Ratings',
    'Sort by Recently added'
  ];

  List<Service> Services = [
    Service('Non-Emergency \nTransportation'),
    Service('Basic & Advanced \nLife Support Ambulance'),
    Service('9-1-1 Emergency Ambulance'),
    Service('Specialty Care Transport'),
    Service('Air Medical Transport')
  ];

  Widget _buildCheckbox() {
    return Container(
      height: 400.0,
      child: MultiSelectionExample(Services),
    );
  }

  Widget _buildSubmitbtn() {
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
                return COVIDScreen();
              },
            ),
          );
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.purple,
        child: Text(
          'SUBMIT',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
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
                        'Hi David, \nWelcome!',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 70.0),
                      Text(
                        'Select the service you need today:',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontFamily: 'OpenSans',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      _buildCheckbox(),
                      SizedBox(height: 30.0),
                      _buildSubmitbtn(),
                      SizedBox(
                        height: 30.0,
                      ),
                      // _buildPasswordTF(),
                      // _buildForgotPasswordBtn(),
                      // _buildRememberMeCheckbox(),
                      // _buildLoginBtn(),
                      // // _buildSignInWithText(),
                      // // _buildSocialBtnRow(),
                      // _buildSignupBtn(),
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