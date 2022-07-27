import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CollectionItem extends StatelessWidget {
  String txt = "";
  String imageLink;
  CollectionItem(
      {required this.onPressed, required this.txt, required this.imageLink});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      child: Container(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageLink,
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.white.withOpacity(0.60),
                alignment: Alignment.center,
                height: 40,
                width: 150,
                child: Text(
                  txt,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
