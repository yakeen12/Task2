import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CollectionItem extends StatefulWidget {
  String txt = "";
  String imageLink;
  CollectionItem(
      {super.key,
      required this.onPressed,
      required this.txt,
      required this.imageLink});

  final GestureTapCallback onPressed;

  @override
  State<CollectionItem> createState() => _CollectionItemState();
}

class _CollectionItemState extends State<CollectionItem> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onPressed,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              widget.imageLink,
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
                widget.txt,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
