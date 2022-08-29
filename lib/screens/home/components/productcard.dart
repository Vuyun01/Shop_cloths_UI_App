import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.product, required this.onTap,

  }) : super(key: key);

  final Product product;
  final VoidCallback onTap;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.2, width: size.width * 0.45,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
              
            ),
            child: Hero(
              tag: product.id!,
              child: Image.asset(product.image!)
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 3),
            child: Text(
              "${product.title}",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$ ${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}