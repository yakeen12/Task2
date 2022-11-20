import 'package:get/get.dart';

class LocalStrings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'eng': {
          "ShoppingBag": "Shopping Bag",
          "Products": "Products",
          "See_all": "See all",
          "Collection": "Collection",
          "Spring": "Spring",
          "fall": "fall",
          "Summer": "Summer",
          "Winter": "Winter",
          "Supplier": 'Supplier',
        },
        'ar': {
          "ShoppingBag": "عربة التّسوق",
          "Products": 'المنتجات',
          "See_all": "الكل",
          "Category": "تصنيف",
          "fall": "خريفي",
          "Summer": "صيفي",
          "Winter": "شتوي",
          "Spring": "ربيعي",
          'Supplier': 'المزوّد'
        },
      };
}
