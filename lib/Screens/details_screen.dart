// import 'package:Mentisano/Screens/Rent.dart';
import 'package:flutter/material.dart';
import 'package:Mentisano/Components/People.dart';
import 'package:Mentisano/Components/body.dart';

class Details extends StatelessWidget {
  final People people;
  const Details({Key? key, required this.people}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: people.color,
      appBar: buildAppBar(context),
      body: Bodies(people:people),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: people.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 5.0,),

      ],
    );
  }
}
