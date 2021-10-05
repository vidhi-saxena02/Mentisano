import 'package:Mentisano/Screens/selection_screen.dart';
import 'package:Mentisano/Screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';
import 'Screens/registeration_screen.dart';
import 'Screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/welcome_page.dart';

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
          Welcomepage.id:(context)=> Welcomepage(),
          SelectChoice.id:(context)=> SelectChoice(),
        }
    );
  }
}

