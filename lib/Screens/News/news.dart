import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
class NewsScreen extends StatefulWidget {
  const NewsScreen({ Key? key }) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

    String url = "https://newsapi.org/v2/everything?q=tesla&from=2022-04-23&sortBy=publishedAt&apiKey=2b011307aa0d4357a3d7ee0c238ca1e0";
  //String stringResponse = "";
   Map? mapResponse;
   List? listOfData;
  Future fetchData() async{
    http.Response respon;
     //var client = http.Client();
     respon = await http.get(Uri.parse(url));
   if(respon.statusCode == 200){
     setState(() {
       mapResponse = json.decode(respon.body);
       listOfData = mapResponse!["articles"];
     });
   }
  }
  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color(0xFF09009B),
        title: Text("News"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
      ),
      body:mapResponse==null?Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ):
      //SafeArea(child: Text(mapResponse!["totalResults"].toString()))
      ListView.builder(
        itemCount: listOfData ==null ?0 :listOfData?.length,
        itemBuilder: (context,index){
        return Card(
          color: Color(0XFFF5F2E8),
          child: 
            Container(
              margin: EdgeInsets.only(top:20,bottom: 20,left: 10,right:10),
              child: Column(
                children: [
                  Text("${listOfData?[index]["title"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                  SizedBox(height:10,),
                  Text("- ${listOfData?[index]["author"]}",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox(height:10,),
                  Text("${listOfData?[index]["description"]}",textAlign: TextAlign.justify,),
                  SizedBox(height:10,),
                  Text("Published at: ${listOfData?[index]["publishedAt"]}",textAlign: TextAlign.right,style: TextStyle(fontSize: 16),),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      launch(listOfData?[index]["url"]);
                    },
                    child: Text("Click here to more Info",style: TextStyle(color: Colors.blue,fontSize: 16),)),
                  
                
                  
                  //Image.network("${listOfData?[index]["urlToImage"]}"),
                 // Text("${listOfData?[index]["author"]}"),
                ],
              ),
            ),
            
          
        );
      })
    );
  }
}