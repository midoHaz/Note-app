import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/color_item.dart';

class ColorList extends StatefulWidget {
  const ColorList({
    Key? key,
  }) : super(key: key);

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.separated(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isSelected: currentIndex == index,
            )),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 5,
          );
        },
      ),
    );
  }
}
