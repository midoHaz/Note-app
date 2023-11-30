import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomTextField(hint: 'Title',),
            SizedBox(height: 24,),
            CustomTextField(hint: 'Content',maxLines: 4,),
            SizedBox(height: 32,),
            CustomButton(),
            SizedBox(height: 32,),

          ],
        ),
      ),
    );
  }
}
