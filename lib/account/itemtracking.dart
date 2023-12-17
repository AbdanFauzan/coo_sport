import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ItemTracking extends StatefulWidget {
  const ItemTracking({super.key});

  @override
  State<ItemTracking> createState() => _ItemTrackingState();
}

class _ItemTrackingState extends State<ItemTracking> {
  static const LatLng sourceLocation = LatLng(1.0824349847929984, 104.02685878188734);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF019B83)),
        title: const Padding(
          padding: EdgeInsets.only(left: 68, top: 0, right: 7),
          child: Text(
            'Item Tracking',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ESTIMATION : ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "23 AUGUST 2024",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // GoogleMap(initialCameraPosition:  CameraPosition(target:  sourceLocation, zoom: 10)),
          ],
        ),
      ),
    );
  }
}
