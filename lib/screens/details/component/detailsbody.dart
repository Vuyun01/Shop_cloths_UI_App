

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_cloths_online/constants.dart';
import 'package:shop_cloths_online/model/product.dart';
import 'package:shop_cloths_online/screens/details/component/colordot.dart';
import 'package:shop_cloths_online/screens/details/component/purchasebutton.dart';

import 'custombutton.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({
    Key? key, required this.product,

  }) : super(key: key);
  final Product product;
  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  int currentIndex = -1;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.35),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: size.height * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding * 5),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
                        child: Text("Color"),
                      ),
                      Row(
                        children: List.generate(3, (index) => Padding(
                          padding: const EdgeInsets.only(right: kDefaultPadding/2),
                          child: ColorDot(
                            color: products[index].color!,
                            isSelected: currentIndex == index,
                            onTap: (){
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ))
                      ),
                      
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
                        child: Text("Size"),
                      ),
                      Text(
                        "${widget.product.size} cm",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold
                        )
                      )
                    ],
                  )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
            child: Text(
              widget.product.description!,
              style: TextStyle(height: 1.5),
            ),
          ),
          ListCustomButton(),
          PurchaseButton(product: widget.product)
    
        ],
      ),
    );
  }
}


