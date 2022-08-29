import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../constants.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key, required this.category, required this.onTap, required this.isSelected,
  
  }) : super(key: key);

  final bool isSelected;
  final String category;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, 
                color: isSelected ? Colors.black : Colors.grey.shade400
              ),
            ),
            Container(
              height: 2, width: 40,
              color: isSelected ? Colors.black : null,
            )
          ],
        ),
      ),
    );
  }
}