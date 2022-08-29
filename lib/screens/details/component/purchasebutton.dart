import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../model/product.dart';

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({
    Key? key,
    required this.product
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 55, width: 70,
            margin: EdgeInsets.only(right: kDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: product.color!)
            ),
            child: IconButton(
              onPressed: (){}, 
              icon: SvgPicture.asset(AppAssets.add_to_cart)
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 55,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: product.color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onPressed: (){}, 
                child: Text(
                  "Buy Now",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white
                  ),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
