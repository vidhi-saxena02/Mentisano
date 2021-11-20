import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  static const String id = 'order';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Container(child: Image(image:NetworkImage('https://i.pinimg.com/originals/b9/88/b7/b988b7c3e84e1f83ef9447157831b460.gif'),),)),
    );
  }
}
