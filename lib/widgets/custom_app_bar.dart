import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

AppBar customAppBar({
    Color color = Colors.white, 
    Color buttonColor = kTextColor, 
    required VoidCallback? onPressed,
    // required VoidCallback? onPressed1,
    // required VoidCallback? onPressed2
  }){
  return AppBar(
    backgroundColor: color,
        elevation: 0,
        leading: IconButton(
          onPressed: onPressed, 
          icon: Icon(Icons.arrow_back_ios_new, color: buttonColor,)
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset(AppAssets.search, color: buttonColor),
          ),
          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset(AppAssets.cart, color: buttonColor),
          )
        ],
  );
}