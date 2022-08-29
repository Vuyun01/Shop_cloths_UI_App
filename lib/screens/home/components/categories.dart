import 'package:flutter/material.dart';
import 'package:shop_cloths_online/constants.dart';

import 'category.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
    return Container(
      height: 30,
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Category(
          category: categories[index], 
          onTap: (){
            setState(() {
              selectedIndex = index;
            });
          }, 
          isSelected: selectedIndex == index
        )
      ),
    );
  }
}
