import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'ClothesItem.dart';
import 'CollectionItem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.only(left: 24), children: [
        Column(
          children: [
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton.small(
                    onPressed: () {},
                    child: Icon(Icons.menu),
                    backgroundColor: Color.fromARGB(255, 134, 239, 138),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  FloatingActionButton.small(
                    onPressed: () {},
                    child: Icon(Icons.search),
                    backgroundColor: Color.fromARGB(255, 134, 239, 138),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrival",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                        color: Color.fromARGB(255, 134, 239, 138),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              height: 270,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: clothes.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 12,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return buildClothes(item: clothes[index]);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Collection",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                        color: Color.fromARGB(255, 134, 239, 138),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 12,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return collection[index];
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

List<CollectionItem> collection = [
  CollectionItem(
    onPressed: () {},
    txt: "Spring",
    imageLink:
        "https://static.onecms.io/wp-content/uploads/sites/23/2022/02/18/spring-activities-2000.jpg",
  ),
  CollectionItem(
    onPressed: () {},
    txt: "Winter",
    imageLink:
        "https://i.pinimg.com/564x/cb/6b/90/cb6b903d922083c2f6434f555b05b0fd.jpg",
  ),
  CollectionItem(
    onPressed: () {},
    txt: "fall",
    imageLink:
        "https://media.istockphoto.com/photos/the-road-covered-with-autumn-leaves-picture-id1162998852?k=20&m=1162998852&s=612x612&w=0&h=i5sg7gaTNKTJ2Q0_9jn6dXsaU_rumNRdl6oNjYoI8qk=",
  ),
  CollectionItem(
    onPressed: () {},
    txt: "Summer",
    imageLink:
        "https://images.twinkl.co.uk/tw1n/image/private/t_630/u/ux/wheat-2391348-1920_ver_1.jpg",
  ),
];

List<ClothesItem> clothes = [
  ClothesItem(
      name: "Hooded Shirt",
      price: "8.00 US\$",
      imageLink:
          "https://img.ltwebstatic.com/images3_pi/2021/11/16/163705542478ae77d7fb845d9b51e80a0716042e25_thumbnail_900x.webp"),
  ClothesItem(
    name: "Tie Neck Collared Flare Dress",
    price: "15.12 US\$",
    imageLink:
        "https://img.ltwebstatic.com/images2_pi/2019/01/04/15465857944096448902_thumbnail_900x1199.webp",
  ),
  ClothesItem(
    name: "Plaid Quilted Snap Button Hooded Coat",
    price: "28.00 US\$",
    imageLink:
        "https://img.ltwebstatic.com/images3_pi/2022/06/15/16552588300a44f09300eb787fc311aabf32caede4_thumbnail_900x.webp",
  ),
  ClothesItem(
    name: "Baby Colorblock Double-sided Bucket Hat",
    price: "5.00 US\$",
    imageLink:
        "https://img.ltwebstatic.com/images3_pi/2022/07/06/165710488743a9045e4994b7dfa9216282b765e67b_thumbnail_900x.webp",
  ),
];
