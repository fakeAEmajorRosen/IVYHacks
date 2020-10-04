import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_app/screens/home/DriverFoundScreen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_app/services/auth.dart';

class WaitingScreen extends StatefulWidget {
  @override
  _WaitingScreenState createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  bool paired = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 10);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => DriverFoundScreen()));
  }

  final AuthService _auth = AuthService();
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: const Text('Booking an ambulance...'),
        ),
        body: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: const CameraPosition(
                target: LatLng(19.0760, 72.8777), zoom: 12),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            }));
  }
}
