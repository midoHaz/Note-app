import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/add_note.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const NotesViewBody(),
    );
  }
}
