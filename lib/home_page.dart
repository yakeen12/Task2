import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/model/item.dart';
import 'clothes_item.dart';
import 'collection_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int langCounter = 0;

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
          child: Container(
        padding: const EdgeInsets.all(44),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 24,
          ),
          FloatingActionButton.small(
            onPressed: () {
              _scaffoldKey.currentState!.closeDrawer();
            },
            backgroundColor: const Color.fromARGB(255, 134, 239, 138),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: const Icon(Icons.menu),
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton.small(
            onPressed: () {
              // If the number of pressed is odd then the app language will be arabic
              // Else eng
              setState(() {
                langCounter++;
              });
              if (langCounter % 2 == 0) {
                var locale = const Locale("eng");
                Get.updateLocale(locale);
              } else {
                var locale = const Locale("ar");
                Get.updateLocale(locale);
              }
            },
            backgroundColor: const Color.fromARGB(255, 134, 239, 138),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: const Icon(Icons.language),
          ),
        ]),
      )),
      body: ListView(
          padding: langCounter % 2 == 0
              ? const EdgeInsets.only(left: 24)
              : const EdgeInsets.only(right: 24),
          children: [
            Column(
              children: [
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton.small(
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        backgroundColor:
                            const Color.fromARGB(255, 134, 239, 138),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(Icons.menu),
                      ),
                      FloatingActionButton.small(
                        onPressed: () {},
                        backgroundColor:
                            const Color.fromARGB(255, 134, 239, 138),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category".tr,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See_all".tr,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 134, 239, 138),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: collection.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 12,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return CollectionItem(
                          onPressed: () {},
                          txt: collection[index].txt!.tr,
                          imageLink: collection[index].imageLink!);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Products".tr,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See_all".tr,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 134, 239, 138),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 270,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: clothes.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 12,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return buildClothes(item: clothes[index]);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Supplier".tr,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        radius: 48, // Image radius
                        backgroundImage: NetworkImage(
                            'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/nubwqp0trkipj4wugykd'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('Al-Zaytoonah University'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        radius: 48, // Image radius
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ZFnC_6kRqa5v_OqNpWJ6YjDH1CTZu8tRYUVk0-HGdA&s'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('Israa University'),
                  ],
                ),
              ],
            ),
          ]),
    );
  }

  List<Item> collection = [
    Item(
      txt: "Spring",
      imageLink:
          "https://static.onecms.io/wp-content/uploads/sites/23/2022/02/18/spring-activities-2000.jpg",
    ),
    Item(
      txt: "Winter",
      imageLink:
          "https://i.pinimg.com/564x/cb/6b/90/cb6b903d922083c2f6434f555b05b0fd.jpg",
    ),
    Item(
      txt: "fall",
      imageLink:
          "https://media.istockphoto.com/photos/the-road-covered-with-autumn-leaves-picture-id1162998852?k=20&m=1162998852&s=612x612&w=0&h=i5sg7gaTNKTJ2Q0_9jn6dXsaU_rumNRdl6oNjYoI8qk=",
    ),
    Item(
      txt: "Summer",
      imageLink:
          "https://images.twinkl.co.uk/tw1n/image/private/t_630/u/ux/wheat-2391348-1920_ver_1.jpg",
    )
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
}
