import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isSelected, required this.color}) : super(key: key);
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected?CircleAvatar(
      backgroundColor: Colors.white,
      radius: 40.0,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 35.0,
      ),
    ): CircleAvatar(
      backgroundColor:color,
      radius: 40.0,
    );
  }
}