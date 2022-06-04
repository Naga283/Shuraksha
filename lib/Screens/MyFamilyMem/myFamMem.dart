import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
class MyFamilyMemScreen extends StatefulWidget {
  const MyFamilyMemScreen({Key? key}) : super(key: key);

  @override
  State<MyFamilyMemScreen> createState() => _MyFamilyMemScreenState();
}

class _MyFamilyMemScreenState extends State<MyFamilyMemScreen> {
  @override
  Widget build(BuildContext context) {
 
    String? phn;
    String? nam;
    var firebaseUser = FirebaseAuth.instance.currentUser;
    final _formKey = GlobalKey<FormState>();
    CollectionReference ref = FirebaseFirestore.instance.collection("User");
    void sending_SMS(String msg, List<String> list_receipents) async {
 String send_result = await sendSMS(message: msg, recipients: list_receipents)
        .catchError((err) {
      print(err);
    });
print(send_result);
}
    
    return Scaffold(appBar: AppBar( backgroundColor: Color(0xFF09009B),
        title: Text("My Family Members"),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,),

      body: SafeArea(
        child: StreamBuilder(
          stream: ref.doc(firebaseUser!.uid).collection("Family Details").snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
            return ListView.builder(
              itemCount: snapshot.hasData?snapshot.data!.docs.length:0,
              itemBuilder:(context,index) {
              return   Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [ 
                            
                            Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white30),
                        child: PopupMenuButton(
          icon: Icon(Icons.more_vert,color: Colors.black), // add this line
          itemBuilder: (_) => <PopupMenuItem<String>>[
            new PopupMenuItem<String>(
              child: GestureDetector(
                onTap: (){
                  sending_SMS("Hello ", ["6309800270"]);
                //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditDetails(docToEdit: snapshot.data!.docs[index])));
                },
                child: Container(
                    width: 100,
                    // height: 30,
                    child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.black),
                    )),
              )),

          ],
          
          ),
                      ),],
                        ),
                      Text("${snapshot.data!.docs[index]["Name"]}",style:TextStyle(fontSize: 20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Phone:",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                          Text("${snapshot.data!.docs[index]["Phone"]}"),
                        ],
                      )
                    ],
                  ),
                );
              }
            );
          }
        ),
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Expanded(
              child: Column(
                children: [
                  TextFormField(
                    
                    decoration: InputDecoration(

                      hintText: "Enter Name of Person",
                    ),
                     validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (val) {
              nam = val;
            },
                   
                    
                  ),
                  TextFormField(
                    
                    keyboardType: TextInputType.phone,
                   
                    decoration: InputDecoration(hintText: "Enter Phone "),
                     validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (val) {
              phn = val;
            },
                  ),
                  RaisedButton(onPressed: (){
                     if (_formKey.currentState!.validate()) {
                //  _formKey.currentState!.save();
                    ref.doc(firebaseUser.uid).collection("Family Details").add({
                      "Name":nam,
                      
                      "Phone":phn
                    }).whenComplete(() => Navigator.of(context).pop());}
                    // else {
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //     content: Text(
                    //       "Enter credentials",
                    //       style: TextStyle(fontSize: 16),
                    //     ),
                    //   ));
                    // }
                  },child: Text("Submit")),
                ],
              ),
            ),
          );
        });
      },child: Icon(Icons.add),),
    );
  }
}