import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pandiller_alpha/Widgets/allButtons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(38.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.map),
            color: Colors.black,
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Button2(buttonText: 'Amigos'),
            SizedBox(
              height: 13,
              child: VerticalDivider(
                thickness: 1.5,
                width: 20,
                color: Colors.black,
              ),
            ),
            Button2(buttonText: 'Público'),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: const GoogleMap(
          initialCameraPosition:
              CameraPosition(target: sourceLocation, zoom: 14.1),
        ),
      ),
    );
  }
}
