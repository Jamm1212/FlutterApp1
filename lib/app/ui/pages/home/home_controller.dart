import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/ui/utils/map_style.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/widgets.dart' show ChangeNotifier;

class HomeController extends ChangeNotifier{
final Map<MarkerId,Marker> _markers = {};

Set<Marker> get markers => _markers.values.toSet();

 final initialCameraPosition = const CameraPosition(
    target: LatLng(-33.4429103,-70.6644327),
    zoom: 13,
    );

  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(MapStyle);
  }


  void onTap(LatLng position){
    final markerId = MarkerId(_markers.length.toString());
    final marker = Marker(
      markerId: markerId,
      position: position,  
    );
    _markers[markerId] = marker;
    notifyListeners();

  }
}