import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_cloths_online/constants.dart';
import 'package:shop_cloths_online/screens/home/components/category.dart';

import '../../../model/product.dart';
import '../../details/detail_screen.dart';
import 'categories.dart';
import 'productcard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding,
              childAspectRatio: 0.75,
              children: products.map((e) => ProductCard(
                product: e,
                onTap: (){
                  Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (context) => DetailScreen(product: e,)));
                },
              )).toList()
            ),
          )
        )
      ],
    );
  }
}



