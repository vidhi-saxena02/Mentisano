import 'package:Mentisano/Screens/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter/material.dart';


const kButtoncolor = Color(0xFF598885);

class Register extends StatefulWidget {
  static const String id = 'registeration_screen';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner= false;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFAED),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    Center(
                      child: Text(
                        "Taking Care Of Yourself",
                        style: TextStyle(
                            fontFamily: 'BonheurRoyale',
                            fontSize: 35.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 220.0,
                      width: 800.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/BM.png'), fit: BoxFit.fitWidth),
                      ),
                    ),
                    SizedBox(
                      height: 38.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        email=value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter your email',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFBE595F), width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF494450), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        password=value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter your password',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFBE595F), width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF494450), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Material(
                        color: kButtoncolor,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () async {
                            setState(() {
                              showSpinner=true;
                            });
                            try {
                              final newUser = await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                              if(newUser!= null){
                                Navigator.pushNamed(context, Welcomepage.id);
                              }
                              setState(() {
                                showSpinner=false;
                              });
                            }
                            catch(e){
                              print(e);
                            }
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
