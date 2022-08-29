import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ListCustomButton extends StatefulWidget {
  const ListCustomButton({Key? key}) : super(key: key);

  @override
  State<ListCustomButton> createState() => _ListCustomButtonState();
}

class _ListCustomButtonState extends State<ListCustomButton> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RoundedButton(onTap: (){
              setState(() {
                (quantity == 1) ? quantity = 1 : quantity--;
              });
            }, icon: Icons.remove),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
              child: Text(
                "${quantity}",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RoundedButton(onTap: (){
              setState(() {
                quantity++;
              });
            }, icon: Icons.add),
            
          ],
        ),
        Container(
          padding: EdgeInsets.all(8),
          height: 40, width: 40,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset(AppAssets.heart),
        ),
       
      ],
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key, required this.onTap, required this.icon,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32, width: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13)
          )
        ),
        onPressed: onTap,
        child: Icon(icon, color: kTextColor,)
      )
    );
  }
}

