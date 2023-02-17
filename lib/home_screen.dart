import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = const CameraPosition(
      target: LatLng(33.6844, 73.0479),
  zoom: 14);
  List<Marker> _marker = [];
  List<Marker> _list = [
    Marker(markerId: MarkerId("1"),
      position:  LatLng(33.6941, 72.9734),
    infoWindow: InfoWindow(
      title: "Islamabad",
    ),
    ),
    Marker(markerId: MarkerId("2"),
      position:  LatLng(36.557372, 104.039697),
    infoWindow: InfoWindow(
      title: "China",
    ),
    ),
    Marker(markerId: MarkerId("3"),
      position:  LatLng(35.6762, 139.6503),
    infoWindow: InfoWindow(
      title: "Japan",
    ),
    ),

  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          myLocationButtonEnabled: true,
          markers: Set<Marker>.of(_marker),
          mapType: MapType.normal,
          compassEnabled: false,
          onMapCreated: (GoogleMapController controller){
            _controller.complete(controller);
          },

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_disabled_outlined),
        onPressed: ()async{
            GoogleMapController controller = await _controller.future;
            controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(35.6762, 139.6503),zoom: 14,),));
            setState(() {

            });
        },
      ),

    );
  }
}
