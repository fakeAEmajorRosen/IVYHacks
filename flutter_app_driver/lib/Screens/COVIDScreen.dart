import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_driver/utilities/c.dart';
import 'package:flutter_app_driver/Screens/MultiSelectionExample.dart';
import 'package:flutter_app_driver/Screens/WaitingScreen.dart';

class COVIDScreen extends StatefulWidget {
  @override
  _COVIDScreenState createState() => _COVIDScreenState();

}

class _COVIDScreenState extends State<COVIDScreen>{



  Widget _buildYesSubmitbtn() {
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
                return WaitingScreen();
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
          'Yes',
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

  Widget _buildNoSubmitbtn() {
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
                return WaitingScreen();
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
          'No',
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
                        'COVID-19 Policy',
                        style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'OpenSans',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 80.0),
                        Text(
                        'Are you willing to transport individuals with the symptom of COVID-19 or those have been tested positive recently and follow all COVID-19 protocols?',
                        style: TextStyle(
                        color: Colors.deepPurple,
                        fontFamily: 'OpenSans',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 10.0),
                        _buildYesSubmitbtn(),
                        SizedBox(height: 30.0),
                        _buildNoSubmitbtn(),
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
