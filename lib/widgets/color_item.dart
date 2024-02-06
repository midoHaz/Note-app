import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.blueAccent,
      radius: 40.0,
    );
  }
}