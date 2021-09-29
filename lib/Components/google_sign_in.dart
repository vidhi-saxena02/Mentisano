import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

// class GoogleSignInProvider extends ChangeNotifier {
//   final googleSignIn=GoogleSignIn();
//   bool _isSigningIn;
//
//   GoogleSignInProvider() {
//     _isSigningIn = false;
//   }
//   bool get isSigningIn => _isSigningIn;
//   set isSigningIn(bool isSigningIn){
//     _isSigningIn = isSigningIn;
//     notifyListeners();
//   }
//
//   Future googleLogin()async{
//     final googleUser = await googleSignIn.signIn();
//     if (googleUser==null) return;
//     _user = googleUser;
//     final googleAuth = await googleUser.authentication;
//
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );
//
//     await FirebaseAuth.instance.signInWithCredential(credential);
//     notifyListeners();
//
//
//   }
// }
class AuthClass {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  // Future<void> googleSignIn() async{
  //   try {
  //     GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
  //     if (googleSignInAccount!=null)
  //   } catch(e){}
  // }
  Future<void> handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }
}