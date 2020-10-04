import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MyGoogleMap extends StatefulWidget {
  @override
  _MyGoogleMapState createState() => _MyGoogleMapState();
}

class _MyGoogleMapState extends State<MyGoogleMap> {
  Completer<GoogleMapController> _controller = Completer();
  // GoogleMapController mapController;
  static const _initalP = const LatLng(33.7697, 77.3918);
  LatLng _LastP = _initalP;
  final Set<Marker> _markers = {};
  MapType _currentMapType = MapType.normal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initalP,
              zoom:10
            ),
            onMapCreated: _onCreated,
            myLocationEnabled: true,
            mapType: _currentMapType,
            markers: _markers,
            // onCameraMove: _onCameraMove,
          )
        ],
      ),
      );


  }

  _onCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  // -onCameraMove(CameraPosition position) {
  //   _LastP = position.target;
  // }
}