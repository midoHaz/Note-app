import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/color_item.dart';

class EditColorNotes extends StatefulWidget {
  const EditColorNotes({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditColorNotes> createState() => _EditColorNotesState();
}

class _EditColorNotesState extends State<EditColorNotes> {
  late int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex= kColors.indexOf(Color(widget.note.color));
  }

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
              widget.note.color=kColors[index].value;
              setState(() {

              });
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