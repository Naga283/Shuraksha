// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {
// FirebaseAuth auth = FirebaseAuth.instance;

// signUp({String email, String password, String name}) async {
// await FirebaseAuth.instance
// .createUserWithEmailAndPassword(email: email, password: password)
// .then(
// (value) async {
//   // UserUpdateInfo updateInfo = UserUpdateInfo();
// var userUpdateInfo = UserUpdateInfo(); //create user update object
// userUpdateInfo.displayName = "John Doe";
// await value.user!.updateProfile(userUpdateInfo); //update to firebase
// await value.user!.reload();

// print('displayname= ${userUpdateInfo.displayName}');
// },
// );
// }
// } 