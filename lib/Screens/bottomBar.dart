import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/pandabar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:voiceassist/Screens/News/news.dart';
import 'package:voiceassist/Screens/dashboard.dart';
import 'package:voiceassist/Screens/sendLocation/firstPageLocation.dart';

import '../shareLocation/shareLocation.dart';



class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(37.42796133580664, -122.085749655962), zoom: 14);
 GoogleMapController? googleMapController;
  Set<Marker> markers = {};
  String page = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        fabIcon: Icon(Icons.approval_rounded,),
        buttonData: [
          PandaBarButtonData(
            id: 'Dashboard',
            icon: Icons.dashboard,
            title: 'Home',
          ),
          PandaBarButtonData(
            id: 'News',
            icon: Icons.book,
            title: 'News'
          ),
          PandaBarButtonData(
            id: 'Profile',
            icon: Icons.person,
            title: 'Profile'
          ),
          // PandaBarButtonData(
          //   id: 'Yellow',
          //   icon: Icons.notifications,
          //   title: 'Yellow'
          // ),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        // onFabButtonPressed: () {
        //   showCupertinoDialog(
        //     context: context,
        //     builder: (context) {
        //       return CupertinoAlertDialog(
        //         content: Text('Fab Button Pressed!'),
        //         actions: <Widget>[
        //           CupertinoDialogAction(
        //             child: Text('Close'),
        //             isDestructiveAction: true,
        //             onPressed: () {
        //               Navigator.pop(context);
        //             },
                    
        //           )
        //         ],
        //       );
        //     }
        //   );
        // },
        onFabButtonPressed: ()async{
            
  //         Position position = await _determinePosition();

  //         googleMapController!
  //             .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 14)));


  //         markers.clear();

  //         markers.add(Marker(markerId: const MarkerId('currentLocation'),position: LatLng(position.latitude, position.longitude)));

          
  //         setState(() {});
          
  //   String msg = '6309800270';
  //   String name = "Jenny";
  // //  var m = Share.share('https://www.google.com/maps/search/?api=1&query=${currentMArker.position.latitude},${currentMArker.position.longitude}');
  //   String url ="https://www.google.com/maps/search/?api=1&query=${position.latitude},${position.longitude}";
  //  if(position==null)
  //    {
  //      return;
  //    }
  //    launch(('sms:+91$msg?body=$name is in danger track her location by click on this link\n$url')); 
  //   // Share.share('https://www.google.com/maps/search/?api=1&query=${currentMArker.position.latitude},${currentMArker.position.longitude}');

  

        
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MapSample()));
        },
      
      ),
      body: Builder(
        builder: (context) {

          switch (page) {
            case 'Dashboard':
              return Dashboard();
            case 'News':
              return NewsScreen();
            case 'profile':
              return Container(color: Colors.blue.shade900);
            
            case 'Yellow':
              return Container(color: Colors.yellow.shade700);
            default:
              return Container();
              
          }

        },
      ),
    );
  }
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }
}

