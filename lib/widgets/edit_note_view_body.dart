import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 60,),
          CustomAppBar(title: 'Edit Notes',icon: Icons.check,),
          SizedBox(
            height: 35,
          ),
          CustomTextField(hint: 'Title',),
          SizedBox(height: 24,),
          CustomTextField(hint: 'Content',maxLines: 6,),
        ],
      ),
    );
  }
}
