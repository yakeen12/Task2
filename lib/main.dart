import 'package:flutter/material.dart';
import 'package:task2/home_page.dart';
import 'package:task2/shopping_bag.dart';
import 'package:get/get.dart';
import 'components/local_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyHomePAge extends StatefulWidget {
  const MyHomePAge({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePAgeState createState() => _MyHomePAgeState();
}

class _MyHomePAgeState extends State<MyHomePAge> {
  PageController pageController = PageController();
  List<Widget> pages = [const HomePage(), const ShoppingBag()];
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: pages,
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
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalStrings(),
      locale: const Locale("eng"),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePAge(),
    );
  }
}
