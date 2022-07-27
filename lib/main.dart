import 'package:flutter/material.dart';
import 'package:task2/HomePage.dart';
import 'package:task2/ShoppingBag.dart';
import 'CollectionItem.dart';
import 'ClothesItem.dart';
import 'HomePage.dart';
import 'ShoppingBag.dart';

void main() {
  runApp(MyApp());
}

class MyHomePAge extends StatefulWidget {
  const MyHomePAge({Key? key}) : super(key: key);

  @override
  _MyHomePAgeState createState() => _MyHomePAgeState();
}

class _MyHomePAgeState extends State<MyHomePAge> {
  PageController pageController = PageController();
  List<Widget> pages = [HomePage(), ShoppingBag()];
  int selectedIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void onItemTap(int selectedItem) {
    pageController.jumpToPage(selectedItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green[900],
          unselectedItemColor: Colors.green[100],
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: 0,
          onTap: onItemTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: selectedIndex == 0
                      ? Colors.green[900]
                      : Colors.green[100],
                ),
                label: "main"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_rounded,
                  color: selectedIndex == 1
                      ? Colors.green[900]
                      : Colors.green[100],
                ),
                label: "Shopping bag"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: selectedIndex == 2
                      ? Colors.green[900]
                      : Colors.green[100],
                ),
                label: "Favorite items"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: selectedIndex == 3
                      ? Colors.green[900]
                      : Colors.green[100],
                ),
                label: "My profile"),
          ]),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePAge());
  }
}
