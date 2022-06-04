import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class ProtectYourSelf extends StatelessWidget {
  const ProtectYourSelf({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color(0xFF09009B),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Text("Protect YourSelf")),
      body: ListView(
        
        children: [
          ProtectData(heading: "1.Push back & yell loudly:", mat: "This the first thing you need to do as soon you realize that you are being stalked. If you sense trouble, act promptly. If attacked, push your assaulter aside and shout as loudly as you can. It might not dissuade them, but it will definitely make you seem like a difficult target. Also, it will rouse the attention of people around you and get help to you faster. ", img: 'assests/images/protectYourSelf/1.jpeg',),
          SizedBox(height: 15,),
          ProtectData(heading: "2.The heel of your palm to strike at the nose:", mat: "When you're cornered in a deserted area, a swift blow to the nose will help you escape. If your attacker is charging towards you, hit their nose with the heel of your palm using all the strength you've got. This will cause immense pain and will temporarily disorient them, allowing you time to call for help or escape.", img: 'assests/images/protectYourSelf/2.jpeg',),
          SizedBox(height: 15,),
          ProtectData(heading: "3.Use everyday objects as weapons :", mat: "You can fashion weapons out of anything around you. Like any other weapons, a set of keys wedged between your fingers like brass knuckles can deliver a crippling blow. If you are attacked at home, run to the kitchen and grab anything like a rolling pin, heavy ladle or a knife. Just remember to be quick!", img: 'assests/images/protectYourSelf/3.jpeg',),
          SizedBox(height: 15,),
          ProtectData(heading: "4.Get out of a wrist-hold:", mat: "If your attacker has you in a wrist-hold, here's an easy way to break free. Instead of struggling, squat down, lean forward and then bend your elbows all the way towards their arm, till they can no longer hold on. Or simply rotate your wrist to the point where their finger and thumb meet and yank your wrist free. Their grip will be the weakest at that point and a sharp tug will help you escape quickly.", img: "assests/images/protectYourSelf/4.jpeg"),
          SizedBox(height: 15,),
          ProtectData(heading: "5.Keep a bag of essentials in your car:", mat: "A car survival kit can be your best friend when you're driving long distances. Keep items like first aid kit, jumper cables, flashlight, a fully-charged power bank, matchbox, a thick rope etc. in your kit and you'll always be prepared to face any situation on the road.", img: "assests/images/protectYourSelf/4.jpeg"),
          SizedBox(height: 15,),
          ProtectData(heading: "6.Hit them with your elbows:", mat: "If the attacker is trying to pin your arms down, this can be a useful strike to incapacitate them with. So yank your arms free of their grapple and hit their head with your elbows as hard as you can. With enough force to the temple, you elbows can potentially cause severe bruising and unconsciousness, crippling your attacker for several minutes.", img: "assests/images/protectYourSelf/5.jpeg"),
          SizedBox(height: 15,),
          ProtectData(heading: "7.Use pepper spray:", mat: "Nothing works more effectively than pepper spray to the face. Some formulations are powerful enough to cause tearing, irritation and even temporary blindness when sprayed directly into the eyes. This trick works best when your attacker is charging towards you. Keep a can of pepper spray in your purse and in the glove compartment of your car for emergencies. ", img: "assests/images/protectYourSelf/6.jpeg")

        ],
      ),
    );
  }
}

class ProtectData extends StatelessWidget {
  final String heading;
  final String mat;
  final String img;
  const ProtectData({
    Key? key, required this.heading, required this.mat, required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal:10,vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Text(heading,style: TextStyle(fontSize: 26),textAlign: TextAlign.justify,)),
          SizedBox(height: 20,),
          Image.asset(img),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical:10),
            child: Text(mat,style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,))
        ],
      ),
    );
  }
}