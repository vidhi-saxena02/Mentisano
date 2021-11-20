import 'package:Mentisano/Screens/selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:Mentisano/Components/custom_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
late User loggedInUser;
class Welcomepage extends StatefulWidget {
  static const String id = 'welcome_page';
  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  final _auth = FirebaseAuth.instance;
  // late User loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }
  void getCurrentUser (){
    final user =  _auth.currentUser;
    try{
      if(user!=null){
        loggedInUser = user;
      }}
    catch(e){
      print(e);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3C153),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'BonheurRoyale',
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('Mentisano'),
                    ],
                    totalRepeatCount: 1,
                    // isRepeatingAnimation: true,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Self-Care Is How You Take Your Power Back",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Jost-Italic',
                      fontWeight: FontWeight.w200,
                      decoration: TextDecoration.underline,
                      color: Color(0xFF8E6F29)),
                ),
              ),
              Container(
                height: 380.0,
                child: Image.asset('images/mhflu.PNG'),
              ),
              SizedBox(
                height: 120.0,
                width: 250.0,
                child: Center(
                  child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Pacifico',
                    color: Color(0xFF5A0000),
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ScaleAnimatedText(
                          'Meditation And Relaxing Breathing Videos'),
                      ScaleAnimatedText(
                          'ASMR Which Helps Relieve Negative Mood'),
                      ScaleAnimatedText(' Engaging Games'),
                      ScaleAnimatedText(
                          'Browse Through Available Therapists And Pychologists Near You'),
                      ScaleAnimatedText(' Focus on Healing Lonely Souls'),
                    ],
                    pause: const Duration(seconds: 2),
                    displayFullTextOnTap: true,
                    isRepeatingAnimation: true,
                    repeatForever: true,
                  ),
              ),
                ),
              ),
              SizedBox(
                height: 36.0,
              ),
              Ink(
                decoration: ShapeDecoration(shape: CircleBorder(),color: Colors.white60),
                child: IconButton(
                  icon: Icon(Icons.arrow_downward_rounded),
                  iconSize: 35.0,
                  color: Colors.black,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(
                      CustomPageRoute(child:SelectChoice(),direction: AxisDirection.down),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
