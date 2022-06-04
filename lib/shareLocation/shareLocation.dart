// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';



class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
   Location currentLocation = Location();
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(17.823008295135686, 83.17159013862893),
    zoom: 14.4746,
  );


  MapType mapTye = MapType.normal;
  Set<Marker> markerList=Set();
  late Marker currentMArker;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentMArker=Marker(markerId: MarkerId("1"),position: _kGooglePlex.target);
    markerList.clear();
    markerList.add(currentMArker);
  }
  @override
  Widget build(BuildContext context) {
   
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(title:Text("Google Maps"),actions: [
        Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.greenAccent,
                  shape: BoxShape.rectangle
              ),
          child: Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: DropdownButton(
              style: TextStyle(color: Colors.black,fontSize: 20,),
                value: mapTye,
                // ignore: prefer_const_literals_to_create_immutables
                items: [
                  DropdownMenuItem(
                    child: Text("Normal"),
                    value: MapType.normal,
                  ),
                  DropdownMenuItem(
                    child: Text("Hybrid"),
                    value: MapType.hybrid,
                  ),
                  DropdownMenuItem(
                      child: Text("Satellite"),
                      value: MapType.satellite
                  ),
                  DropdownMenuItem(
                      child: Text("Terrain"),
                      value:  MapType.terrain
                  )
                ],
                onChanged: (MapType? value) {
                  setState(() {
                    mapTye = value!;
                  });
                }),
          ),
        ),
      ],),
      body: GoogleMap(
        mapType: mapTye,
        initialCameraPosition: _kGooglePlex,
        markers: markerList,
        onCameraIdle: (){
          setState(() {
            markerList.clear();
            markerList.add(currentMArker);
            print("Markers $currentMArker");
          });

        },
        onCameraMove: (campposition){
          currentMArker=Marker(markerId: MarkerId("1"),position: campposition.target);


        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:_goToTheLake,
        label: Text('Share Location!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }
  // Future<void> share() async {
  //   await WhatsappShare.share(
  //     text: 'Example share text',
  //     linkUrl: 'https://flutter.dev/',
  //     phone: '911234567890',
  //   );
  // }

  Future<void> _goToTheLake() async {
    //  SmsSender sender = SmsSender();
    // String address = "1234567";

    // SmsMessage message = SmsMessage(address, 'Hello flutter!');
    // message.onStateChanged.listen((state) {
    //   if (state == SmsMessageState.Sent) {
    //     print("SMS is sent!");
    //   } else if (state == SmsMessageState.Delivered) {
    //     print("SMS is delivered!");
    //   }
    // });
    // sender.sendSms(message);
    String msg = '6309800270';
    String name = "Jenny";
  //  var m = Share.share('https://www.google.com/maps/search/?api=1&query=${currentMArker.position.latitude},${currentMArker.position.longitude}');
    String url ="https://www.google.com/maps/search/?api=1&query=${17.823008295135686},${83.1695731}";
   if(currentMArker==null)
     {
       return;
     }
     launch(('sms:+91$msg?body=$name is in danger track her location by click on this link\n$url')); 
    // Share.share('https://www.google.com/maps/search/?api=1&query=${currentMArker.position.latitude},${currentMArker.position.longitude}');

  }
}