import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_cloths_online/constants.dart';
import 'package:shop_cloths_online/widgets/custom_app_bar.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        color: Colors.white, 
        onPressed: (){},
      ),
      body: Body()
    );
  }
}