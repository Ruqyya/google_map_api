import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:google_map/Polyline_screen.dart';
import 'package:google_map/convert_latilang_to_address.dart';
import 'package:google_map/custom_marker.dart';
import 'package:google_map/custom_marker_info_window.dart';
import 'package:google_map/custom_marker_network_image.dart';
import 'package:google_map/google_places_api.dart';
import 'package:google_map/home_screen.dart';
import 'package:google_map/polygon_screen.dart';
import 'package:google_map/polyline_two.dart';
import 'package:google_map/user_current_location.dart';

import 'google_map_styling_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: GoolgeMapStyling(),
    );
  }
}

