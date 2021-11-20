
import 'package:Mentisano/Screens/Rent.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'welcome_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Profile extends StatefulWidget {
  static const String id = 'profile';
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _firestore = FirebaseFirestore.instance;
  late String name;
  late String address;
  late int age;
  late String city;
  late String state;
  late int number;
  late bool screen=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.purple,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, top: 25.0, right: 16.0),
        child: ListView(
          children: [
            Text(
              'User Profile',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500,color: Colors.purpleAccent),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2.0,
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 10),
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:AssetImage('images/profilee.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4.0,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: Colors.purpleAccent),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            TextField(
              onChanged: (value) {
                name=value;
              },
              decoration: InputDecoration(
                labelText: 'Full Name',
                labelStyle: TextStyle(color: Colors.purple),
                hintText: 'Kali Uchis',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.purple, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            TextField(
              onChanged: (value) {
                age=int.parse(value);
              },
              decoration: InputDecoration(
                labelText: 'Age',
                labelStyle: TextStyle(color: Colors.purple),
                hintText: '18',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.purple, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            TextField(
              onChanged: (value) {
                number=int.parse(value);
              },
              decoration: InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.purple),
                hintText: '8763920895',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.purple, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            TextField(
              onChanged: (value) {
                address=value;
              },
              decoration: InputDecoration(
                labelText: 'Address',
                labelStyle: TextStyle(color: Colors.purple),
                hintText: '1st Floor,Golden Park',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.purple, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            TextField(
              onChanged: (value) {
                city=value;
              },
              decoration: InputDecoration(
                labelText: 'City',
                labelStyle: TextStyle(color: Colors.purple),
                hintText: 'Mumbai',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.purple, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            TextField(
              onChanged: (value) {
                state=value;
              },
              decoration: InputDecoration(
                labelText: 'State',
                labelStyle: TextStyle(color: Colors.purple),
                hintText: 'Maharastra',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Colors.purple, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                elevation: 10.0,
                child: MaterialButton(
                  onPressed: () {
                    if(age<18){
                      Fluttertoast.showToast(
                          msg: "Age less",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.purpleAccent,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }else {
                      _firestore.collection('information').add({
                        'Address': address,
                        'age' :age,
                        'city': city,
                        'email': loggedInUser.email,
                        'name': name,
                        'phone':number,
                        'state':state,
                      });
                      screen=true;
                    }
                    if(screen==true){
                      Navigator.pushNamed(context, Homepage.id);
                    }
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
