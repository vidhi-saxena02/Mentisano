import 'package:flutter/material.dart';
import 'package:Mentisano/Components/People.dart';
import 'package:Mentisano/Screens/details_screen.dart';



class ItemCard extends StatelessWidget {
  final People people;
  final int index;
  const ItemCard({
    Key? key,
    required this.people,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              people: peoples[index],
            ),),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              height: 180.0,
              width: 160.0,
              decoration: BoxDecoration(
                  color: people.color, borderRadius: BorderRadius.circular(16.0)),
              child: Hero(
                tag: "${people.id}",
                child: Image.asset(
                  people.image,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              people.title,
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
          Text(
            "\₹${people.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}