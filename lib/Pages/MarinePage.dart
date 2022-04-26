// ignore_for_file: file_names, prefer_collection_literals

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarinePage extends StatefulWidget {
  const MarinePage({Key? key}) : super(key: key);

  @override
  State<MarinePage> createState() => _MarinePageState();
}

class _MarinePageState extends State<MarinePage> {
  LatLng laundaPozition = const LatLng(-8.808333, 13.234444);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(target: laundaPozition, zoom: 13),
        markers: createMarker(),
      ),
    );
  }

  Set<Marker> createMarker() {
    return <Marker>[
      Marker(
        markerId: const MarkerId("marker"),
        position: laundaPozition,
      )
    ].toSet();
  }
}
