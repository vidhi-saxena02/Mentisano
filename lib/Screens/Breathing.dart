import 'package:flutter/material.dart';
import 'gif_card.dart';
import 'package:Mentisano/Components/card_provider.dart';
import 'package:provider/provider.dart';

class Breathing extends StatefulWidget {
  static const String id = 'Breathing';
  @override
  _BreathingState createState() => _BreathingState();
}

class _BreathingState extends State<Breathing> {
  @override
  Widget build(BuildContext context) => Scaffold(
      body:SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          child: buildCards(),
        ) ,
      ),
    );
  Widget buildCards(){
    final provider = Provider.of<CardProvider>(context);
    final urlImages = provider.urlImages;

    return urlImages.isEmpty ? Center(
      child: ElevatedButton(
        child: Text('Restart'),
        onPressed: (){
          final provider = Provider.of<CardProvider>(context,listen: false);
          provider.resetUsers();
          count=1;
        },
      ),)
        :Stack(
      children: urlImages.map((urlImage)=>Gifcard(
        urlImage: urlImage,
        isFront:urlImages.last == urlImage,
      )).toList(),
    );
  }

}
