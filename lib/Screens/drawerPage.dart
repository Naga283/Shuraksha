import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:voiceassist/Screens/DrawerScreens/acts.dart';
import 'package:voiceassist/Screens/DrawerScreens/protectYourSelf.dart';
import 'package:voiceassist/Screens/MyFamilyMem/myFamMem.dart';
import 'package:voiceassist/Screens/News/news.dart';
import 'package:voiceassist/Screens/sendLocation/firstPageLocation.dart';
import 'package:voiceassist/shareLocation/currentLocation.dart';
import 'package:voiceassist/shareLocation/shareLocation.dart';
import 'package:voiceassist/voiceAssis/pages/new_page/new_page.dart';
class DrawerDetails extends StatefulWidget {
  const DrawerDetails({ Key? key }) : super(key: key);

  @override
  State<DrawerDetails> createState() => _DrawerDetailsState();
}

class _DrawerDetailsState extends State<DrawerDetails> {
  bool isSwitched = false;  
  var textValue = 'Switch is OFF';  
  FirebaseAuth _auth = FirebaseAuth.instance;
  
  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
        textValue = 'Switch Button is ON';  
      });  
      print('Switch Button is ON');  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
        textValue = 'Switch Button is OFF';  
      });  
      print('Switch Button is OFF');  
    }  
  }  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
ClipRRect(
  borderRadius: BorderRadius.circular(200),
  
  child: Image.asset("assests/images/img2.jpg",height: 100)),
  SizedBox(height: 20,),
          Text("Jenny",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Divider(thickness: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Enable Voice Alert",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
               Switch(  
              onChanged: toggleSwitch,  
              value: isSwitched,  
              activeColor: Colors.blue,  
              activeTrackColor: Colors.yellow,  
              inactiveThumbColor: Colors.redAccent,  
              inactiveTrackColor: Colors.grey,  
            ) ,
            
          
            ],
          ),
          SizedBox(height: 20,),
          Details(name: 'My Family Members', onclick: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyFamilyMemScreen()));
            },) ,
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          Details(name: 'Daily News', onclick: () {  
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewsScreen()));
          },) ,
           SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
          Details(name: 'Acts', onclick: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsPage()));
            },) ,
           Divider(),
            SizedBox(height: 10,),
          GestureDetector(
            onTap: (){},
            child: Details(name: 'Protect Yourself', onclick: () { 
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProtectYourSelf())).whenComplete(() => Navigator.of(context).pop());
             },)) ,
           SizedBox(height: 10,),
           Divider(),
            SizedBox(height: 10,),
          Details(name: 'Track My Travel', onclick: () {  
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MapScreen()));
          },) ,
           SizedBox(height: 10,),
           Divider(),
            SizedBox(height: 10,),
          Details(name: 'Logout', onclick: () async{ 
             // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CurrentLocationScreen()));
               await _auth.signOut().whenComplete(() => print("Logout"));
           },) ,
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String name;
  final VoidCallback onclick;
  const Details({
    Key? key, required this.name, required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
       
        margin: EdgeInsets.only(left: 5),
        width: MediaQuery.of(context).size.width,
        child: Text(name,style: TextStyle(fontSize: 18),),),
    );
    // return ListTile(
    //   title: Text(name,style: TextStyle(fontSize: 16),),
 
    //   onTap: onclick,
    // );
  }
}