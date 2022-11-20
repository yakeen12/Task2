import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ClothesItem {
  final String name;
  final String price;
  final String imageLink;

  ClothesItem(
      {required this.name, required this.price, required this.imageLink});
}

class ClothesPage extends StatelessWidget {
  final ClothesItem item;

  const ClothesPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ItemPage")),
      body: Column(children: [
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Image.network(item.imageLink),
        ),
      ]),
    );
  }
}

Widget buildClothes({required ClothesItem item}) {
  return RawMaterialButton(
    onPressed: () {},
    child: Container(
      width: 230,
      height: 270,
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              item.imageLink,
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              width: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    maxLines: 2,
                  ),
                  Text(item.price)
                ],
              ),
            ),
            FloatingActionButton.small(
              onPressed: () {},
              backgroundColor: Colors.green[900],
              child: const Icon(Icons.favorite),
            )
          ])
        ],
      ),
    ),
  );
}
