import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/model.dart';


class EmergencyNumbersPage extends StatefulWidget {
  const EmergencyNumbersPage({Key? key}) : super(key: key);

  @override
  State<EmergencyNumbersPage> createState() => _EmergencyNumbersPageState();
}

class _EmergencyNumbersPageState extends State<EmergencyNumbersPage> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
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

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight: 160.0,
              flexibleSpace:  FlexibleSpaceBar(
                title: Text('Emergency Numbers'),
                background: Container(
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(image: AssetImage("assests/images/slider1.jpg",),)
                  // ),
                  child: Image.asset("assests/images/EAB.jpg",fit: BoxFit.fill,),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
                child: Center(
                  child: Text('If You are in danger contact this numbers immediately'),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  var item = data[index];
                  return Container(
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                    color: index.isOdd ? Colors.white : Colors.black12,
                    height: 100.0,
                    child: Container(
                      margin: EdgeInsets.only(left: 5,top:10),
                     // width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text(item.name, textScaleFactor: 2)),
                          IconButton(onPressed:(item.click), icon: Icon(Icons.call,color: Colors.green,))
                        ],
                      )),
                  );
                },
                childCount: data.length,
              ),
            ),
          ],
        ),
      ),
     
    );
    
  }
   void _populateDishes() {
    String number ='100';
    String msg ="6309800270";
    var list = <Values>[
     Values("NATIONAL EMERGENCY NUMBER-112","assests/images/100.png",(){
       launch(('tel://112'));   
      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VoiceAssist()));
     }),
       Values("FIRE-101","assests/images/message.png",(){
          launch(('tel://101')); 
       }),
       Values("Ambulance","assests/images/location.jpg",(){
          launch(('tel://108'));
       }),
        Values("Women Helpline","assests/images/emergency.png",(){
       launch(('tel://1091'));
        }),
        Values("Aids Helpline","assests/images/location.jpg",(){
          launch(('tel://1097'));
       }),
       Values("Disaster Management ( N.D.M.A ) ","assests/images/location.jpg",(){
          launch(('tel://1078'));
       }),
       Values("Deputy Commissioner Of Police – Missing Child And Women","assests/images/location.jpg",(){
          launch(('tel://1094'));
       }),
       Values("Railway Enquiry","assests/images/location.jpg",(){
          launch(('tel://139'));
       }),
       Values("Senior Citizen Helpline","assests/images/location.jpg",(){
          launch(('tel://14567'));
       }),
          Values("Railway Accident Emergency Service","assests/images/location.jpg",(){
          launch(('tel://1072'));
       }),
          Values("Road Accident Emergency Service","assests/images/location.jpg",(){
          launch(('tel://1073'));
       }),
          Values("Tourist Helpline","assests/images/location.jpg",(){
          launch(('tel://1363'));
       }),
          Values("LPG Leak Helpline","assests/images/location.jpg",(){
          launch(('tel://1906'));
       }),
          Values("CYBER CRIME HELPLINE","assests/images/location.jpg",(){
          launch(('tel://155620'));
       }),
    ];

    setState(() {
      data = list;
    });
}
}