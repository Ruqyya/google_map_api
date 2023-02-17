
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class ConvertLatLangToAddress extends StatefulWidget {
  const ConvertLatLangToAddress({Key? key}) : super(key: key);

  @override
  _ConvertLatLangToAddressState createState() => _ConvertLatLangToAddressState();
}

class _ConvertLatLangToAddressState extends State<ConvertLatLangToAddress> {
 String setAddress = "", stAdd = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(setAddress),
                Text(stAdd),
                //   Text(address),
              ],
            ),
            const SizedBox(height: 40),
            Column(
              children: <Widget>[
                // const Text('address: Москва, 4-я Тверская-Ямская улица, 7'),
                // Text(latLong),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          List<Location> locations = await locationFromAddress("Gronausestraat 710, Enschede");
          List<Placemark> placemarks = await placemarkFromCoordinates(52.2165157, 6.9437819);

          setState(() {
            setAddress = locations.last.longitude.toString()+ ""+ locations.last.longitude.toString();
            stAdd = placemarks.reversed.last.country.toString()+""+placemarks.reversed.last.locality.toString();
          });


          // final coordinates = new Coordinates(33.6992, 72.9744);



        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
