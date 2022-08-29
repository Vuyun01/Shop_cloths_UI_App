import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key, required this.isSelected, required this.onTap, required this.color,
  }) : super(key: key);

  final bool isSelected;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300),
      padding: isSelected ? EdgeInsets.all(2) : EdgeInsets.all(0),
      height: 40, width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isSelected ? Border.all(color: Color(0xFF356C95), width: 2) : null
      ),
      child: GestureDetector(
        onTap: onTap,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
          ),
        ),
      ),
    );
  }
}

