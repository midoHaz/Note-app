import 'package:flutter/material.dart';
import 'package:note_app/widgets/color_item.dart';

class ColorList extends StatelessWidget {
  const ColorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ColorItem(),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 5,);
        },),
    );
  }
}