import 'package:flutter/material.dart';
class ActsData extends StatelessWidget {
  final String cont;
  final String tit;
  const ActsData({ Key? key, required this.cont, required this.tit }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Center(child: Text(tit,style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)),
            Divider(thickness: 2,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text(cont,textAlign: TextAlign.justify,style: TextStyle(fontSize: 18),)),
          ],
        ),
      ),
    );
  }
}