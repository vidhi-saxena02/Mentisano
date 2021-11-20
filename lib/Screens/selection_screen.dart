import 'package:Mentisano/Screens/Breathing.dart';
import 'package:Mentisano/Screens/game_homepage.dart';
import 'package:Mentisano/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class SelectChoice extends StatefulWidget {
  static const String id = 'selection_screen';

  @override
  _SelectChoiceState createState() => _SelectChoiceState();
}

class _SelectChoiceState extends State<SelectChoice> {
  bool showSpinner= false;
  Future<void> openURL(String url) async {
    if (await canLaunch(url)){
      await launch(url,forceWebView: true);
    }else{
      throw 'Could not open';
    }
  }
  String center_name ='Mentisano';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            center_name = 'Engaging Games';
                          });
                        },
                        onDoubleTap: (){
                          Navigator.pushNamed(context, HomePagee.id);
                        },
                        child: CircleAvatar(
                          // child: Image.asset('images/games.jpeg'),
                          backgroundImage: AssetImage('images/games.png'),
                          radius: 70.0,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(width: 30.0,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            center_name = 'Rent a person';
                          });
                        },
                        onDoubleTap: (){
                          Navigator.pushNamed(context, Profile.id);
                        },
                        child: CircleAvatar(
                          child: Image.asset('images/rentupp.png',fit: BoxFit.cover,),
                          radius: 70.0,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ],
                  )),

              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(center_name,style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,fontFamily: 'BonheurRoyale'),textAlign: TextAlign.center,),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          center_name = 'Relaxing Videos';

                        });
                      },
                      onDoubleTap: (){
                        openURL("https://www.pexels.com/search/videos/relaxing/");
                      },

                      child: CircleAvatar(
                        child: Image.asset('images/rel-modified.png',fit: BoxFit.fill,),
                        radius: 60.0,
                      ),
                    ),
                    SizedBox(width: 50.0,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          center_name = 'Book a therapist';
                        });
                      },
                      onDoubleTap: (){
                        openURL('https://www.apollo247.com/specialties/psychology');
                      },
                      child: CircleAvatar(
                        child: Image.asset('images/doctor.png',fit: BoxFit.cover,),
                        radius: 70.0,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            center_name = 'Breathing Exercises';
                          });
                        },
                        onDoubleTap: () {

                          Navigator.pushNamed(context, Breathing.id);


                        },
                        child: CircleAvatar(
                          child: Image.asset('images/breath.png',fit: BoxFit.cover,),
                          radius: 70.0,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
