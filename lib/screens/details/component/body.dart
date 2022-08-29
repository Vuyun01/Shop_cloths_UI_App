import 'package:flutter/material.dart';
import 'package:shop_cloths_online/constants.dart';

import '../../../model/product.dart';
import 'detailheader.dart';
import 'detailsbody.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              DetailsBody(product: product),
              DetailsHeader(product: product),
            ],
          )
        ],
      ),
    );
  }
}
