import 'package:flutter/material.dart';

class SelectChoice extends StatefulWidget {
  static const String id = 'selection_screen';

  @override
  _SelectChoiceState createState() => _SelectChoiceState();
}

class _SelectChoiceState extends State<SelectChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFAED),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CircleAvatar(
                radius: 200.0,
                backgroundImage: AssetImage('images/rentupp.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
