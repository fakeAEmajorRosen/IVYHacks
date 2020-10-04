import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_driver/Screens/DriverFoundScreen.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
class WaitingScreen extends StatefulWidget {
  @override
  _WaitingScreenState createState() => _WaitingScreenState();

}

class _WaitingScreenState extends State<WaitingScreen> {
  bool paired = false;

  // @override
  // moveon() {
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) {
  //         return DriverFoundScreen();
  //       },
  //     ),
  //   );
  // }

  //////////////////////////////// time_lapse ////////////
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => DriverFoundScreen()
    )
    );
  }
//////////////////////////////////time_lapse end///////////////////////////

  ////map
  // Completer<GoogleMapController> _controller = Completer();
  //
  // double zoomVal=5.0;
  ////


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              ////////////////////
              // _buildGoogleMap(context),
              ////////////////////////
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
                      SizedBox(height: 350.0),
                      Text(
                        'There is no call at this moment!\n\nWe will pair you up with the user if there is any',
                        style: TextStyle(
                          color: Colors.purple,
                          fontFamily: 'OpenSans',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // if (paired == true)
                      //   initState(),
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

  ////////////////map////////////////
  // Widget _buildGoogleMap(BuildContext context) {
  //   return Container(
  //     height: MediaQuery.of(context).size.height,
  //     width: MediaQuery.of(context).size.width,
  //     child: GoogleMap(
  //       mapType: MapType.normal,
  //       initialCameraPosition:  CameraPosition(target: LatLng(40.712776, -74.005974), zoom: 12),
  //       onMapCreated: (GoogleMapController controller) {
  //         _controller.complete(controller);
  //       },
  //       // markers: {
  //       //   newyork1Marker,newyork2Marker,newyork3Marker,gramercyMarker,bernardinMarker,blueMarker
  //       // },
  //     ),
  //   );
  // }
  //////////////////map/////////////////


}

