import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mental_health/Components/google_sign_in.dart';
import 'package:provider/provider.dart';
class Signup_page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                AuthClass().handleSignIn();
              },
              child: Text('sign in with google'),
              )
          ],
        ),
      ),
    );

}
