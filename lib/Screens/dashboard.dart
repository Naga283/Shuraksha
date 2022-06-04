import 'package:awesome_drawer_bar/awesome_drawer_bar.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:voiceassist/Screens/drawerPage.dart';
import 'package:voiceassist/Screens/emergencyNumbers/emergencyNumbers.dart';
import 'package:voiceassist/Screens/nearbyPlaces/anotherPlace.dart';
import 'package:voiceassist/Screens/nearbyPlaces/justPlace.dart';
import 'package:voiceassist/Screens/nearbyPlaces/nearbyPoliceStations.dart';
import 'package:voiceassist/Screens/nearbyPlaces/place_detail.dart';
import 'package:voiceassist/Screens/sendLocation/firstPageLocation.dart';
import 'package:voiceassist/Screens/sliderWidget.dart';
import 'package:voiceassist/models/model.dart';
import 'package:voiceassist/voiceAssis/pages/home_page/home_page.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // late KFDrawerController _drawerController;
  AwesomeDrawerBarController?
 _drawerController = AwesomeDrawerBarController();

    
  List data =<Values>[];
   @override
  void initState() {
    super.initState();
    //_drawerController?.open;
    // _drawerController!.close();
    // _drawerController.toggle!();
    // _drawerController.isOpen!();
    // _drawerController.stateNotifier;
    _populateDishes();
  }
  @override
  Widget build(BuildContext context) {
    String policeNo = "";
    String number ='100';
    String msg ="6309800270";
     //final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
    return Scaffold(
      drawer: Drawer(child: 
      DrawerDetails(),
      ),
  
      appBar: AppBar(
        backgroundColor: Color(0xFF09009B),
        title: Text("Suraksha"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      body:Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            SliderWidget(),
            SizedBox(height: 30,),
            Expanded(
              child: GridView.count(crossAxisCount: 2,
              mainAxisSpacing: 20,
              children: List.generate(
                                 
                                 data.length, (index) { 
                                 
                        var item = data[index];
                        
                      //  QuerySnapshot docM = FirebaseFirestore.instance.collection("Users").doc(firebaseUser?.uid).collection("Cart").doc(index.toString()).get() as QuerySnapshot<Object?>;
            
                        // print(ref.doc(firebaseUser?.uid).collection("Cart").doc(index.toString()).get().then((value) => value.data()!["index"]));
                       // print("$index value:${snapshot.data!.docs[2][
                       //"Cart Item Name"].contains(item.name)}");
                  
                               return GestureDetector(
                                 onTap: (item.click),
                                 child: Card(
                                                    color: Color(0xFF09009B),
                                                      shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30)
                                                      ),
                                                      child: Column(
                                 children: [
                                   Image.asset(item.img,height: MediaQuery.of(context).size.height *0.15,),
                                   Text(item.name,style: TextStyle(fontSize: 20,color: Colors.white),)
                                 ],
                                                      ),
                                                      ),
                               );}
              )
            
                  ),
            ),
          ],
        )
    ));
  }

  void _populateDishes() {
    String number ='100';
    String msg ="6309800270";
    var list = <Values>[
     Values("Call 100","assests/images/100.png",(){
       launch(('tel://${number}'));   
      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VoiceAssist()));
     }),
       Values("Message Family","assests/images/message.png",(){
         launch(('sms:+91$msg?body=hello%20there')); 
       }),
       Values("Nearby \nPolice Stations","assests/images/location.jpg",(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AnotherLoca()));
       }),
        Values("Emergency \n numbers","assests/images/emergency.png",(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EmergencyNumbersPage()));
        }),
    ];

    setState(() {
      data = list;
    });
  }
}