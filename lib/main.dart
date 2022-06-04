import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:voiceassist/Screens/bottomBar.dart';
import 'package:voiceassist/Screens/dashboard.dart';
import 'package:voiceassist/Screens/phoneAuth/startPage.dart';

import 'package:voiceassist/shareLocation/shareLocation.dart';
import 'package:voiceassist/voiceAssis/pages/home_page/home_page.dart';

import 'authentication/authentication.dart';
import 'models/User.dart';




void main(List<String> args) async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: StreamProvider<Useru?>.value (
       value: Authentication().user,
       initialData: null,
       child: InitialiserWidget()),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => ChatterHome(),
      //   '/login': (context) => ChatterLogin(),
      //   '/signup': (context) => ChatterSignUp(),
      //   '/chat': (context) => ChatterScreen(),
      //   // '/chats':(context)=>ChatterScreen()
      // },
      
    );
  }
}