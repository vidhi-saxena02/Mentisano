import 'package:Mentisano/Screens/Breathing.dart';
import 'package:Mentisano/Screens/Rent.dart';
import 'package:Mentisano/Screens/game_homepage.dart';
import 'package:Mentisano/Screens/order.dart';
import 'package:Mentisano/Screens/profile.dart';
import 'package:Mentisano/Screens/selection_screen.dart';
import 'package:Mentisano/Screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/login_screen.dart';
import 'Screens/registeration_screen.dart';
import 'Screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/welcome_page.dart';
// import 'package:provider/provider.dart';
import 'Components/card_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Mentisano());
}

class Mentisano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardProvider(),
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
          initialRoute: WelcomeScreen.id,
          routes: {
            WelcomeScreen.id: (context) => WelcomeScreen(),
            Login.id:(context)=> Login(),
            Register.id:(context)=>Register(),
            Welcomepage.id:(context)=> Welcomepage(),
            SelectChoice.id:(context)=> SelectChoice(),
            Breathing.id: (context)=> Breathing(),
            Profile.id: (context)=>Profile(),
            Homepage.id:(context)=>Homepage(),
            HomePagee.id:(context)=>HomePagee(),
            Order.id:(context)=>Order(),
          }
      ),
    );
  }
}

