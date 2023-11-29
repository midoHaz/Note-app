import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return  const AddNoteBottomSheet();
        });
      },child: const Icon(Icons.add),) ,
      body: const NotesViewBody(),
    );
  }
}
