import 'package:flutter/material.dart';
import 'package:shop_cloths_online/widgets/custom_app_bar.dart';

import '../../model/product.dart';
import 'component/body.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: customAppBar(
        color: product.color!,
        onPressed: () => Navigator.of(context).pop(),
        // onPressed1: () {},
        buttonColor: Colors.white
      ),
      body: Body(product: product,),
    );
  }
}