import 'package:flutter/material.dart';
import 'package:mental_health/Screens/login_screen.dart';
import 'package:mental_health/Screens/registeration_screen.dart';
import 'Screens/welcome_screen.dart';

void main() {
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

