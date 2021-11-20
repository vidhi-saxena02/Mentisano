import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Mentisano/Components/card_provider.dart';


class Gifcard extends StatefulWidget {
  final String urlImage;
  final bool isFront;
  const Gifcard({Key? key, required this.urlImage,required this.isFront,}) : super(key: key);

  @override
  _GifcardState createState() => _GifcardState();
}

class _GifcardState extends State<Gifcard> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final size = MediaQuery.of(context).size;
      final provider = Provider.of<CardProvider>(context,listen: false);
      provider.setScreenSize(size);

    });
  }
  @override
  Widget build(BuildContext context) => SizedBox.expand(
      child: widget.isFront ?buildFontcard():buildcard(),
  );

  Widget buildFontcard() => GestureDetector(
    child: LayoutBuilder(
      builder: (context,constraints) {
        final provider = Provider.of<CardProvider>(context);
        final position = provider.position;
        final milliseconds = provider.isDragging ? 0 : 400;
        final angle = provider.angle * pi/180;
        final center = constraints.smallest.center(Offset.zero);
        final rotatedMatrix = Matrix4.identity()..rotateZ(angle)..translate(center.dx,center.dy)..rotateZ(angle)..translate(-center.dx,-center.dy);

        return AnimatedContainer(
          curve: Curves.easeInOut,
            duration: Duration(milliseconds: milliseconds),
            transform: rotatedMatrix..translate(position.dx,position.dy),
            child: buildcard());
      }
    ),
    onPanStart: (details){
      final provider = Provider.of<CardProvider>(context,listen: false);
          provider.startposition(details);
    },
    onPanUpdate: (details){
      final provider = Provider.of<CardProvider>(context,listen: false);
      provider.updateposition(details);
    },
    onPanEnd: (details){
      final provider = Provider.of<CardProvider>(context,listen: false);
      provider.endposition();
    },
  );
  Widget buildcard() => ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.urlImage),
                  fit: BoxFit.cover,
                ),
            ),
          ),
  );
}

