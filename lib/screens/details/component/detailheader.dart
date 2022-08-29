import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/product.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      margin: EdgeInsets.only(top: kDefaultPadding/2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding/3),
            child: Text(
              product.title!,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Price\n"),
                        TextSpan(
                          text: "\$${product.price}",
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold,
                          )
                        )
                      ]
                    )
                  ),
                ),
                Expanded(
                  child:  Hero(
                    tag: product.id!,
                    child: Image.asset(product.image!, fit: BoxFit.cover,)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}