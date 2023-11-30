import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(padding: EdgeInsets.zero,itemBuilder: (context,index){
        return Padding(
          padding:const  EdgeInsets.symmetric(vertical: 4.0),
          child: GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditNoteView()));
          },child:const  CustomNoteItem(color: Colors.greenAccent,)),
        );
      }),
    );
  }
}
