import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/ui/pages/home/home_controller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState () =>  _HomePageState();
}

class  _HomePageState extends State <HomePage> {

  final _controller  = HomeController(); 

  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(),
      body: GoogleMap(
        markers: _controller.markers,
        onMapCreated:_controller.onMapCreated,
        initialCameraPosition: _controller.initialCameraPosition,
        myLocationButtonEnabled: false,
        onTap: _controller.onTap,
        
      ),
    );
  }
}