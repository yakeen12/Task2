import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({Key? key}) : super(key: key);

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ShoppingBag".tr)),
      body: Container(
        height: 200,
        alignment: Alignment.center,
      ),
    );
  }
}
