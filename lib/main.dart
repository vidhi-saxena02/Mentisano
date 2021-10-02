import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';
import 'Screens/registeration_screen.dart';
import 'Screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Mentisano());
}

class Mentisano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          Login.id:(context)=> Login(),
          Register.id:(context)=>Register(),
        }
    );
  }
}

