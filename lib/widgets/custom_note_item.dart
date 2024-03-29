import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key, required this.note,}) : super(key: key);

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteView(note: note);
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(note.color),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [ListTile(
            title:Text(note.title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(note.subTitle,style: TextStyle(color: Colors.white.withOpacity(.4)),),
            ),
            trailing:IconButton(onPressed: (){
              note.delete();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
            }, icon: const Icon(Icons.delete,size: 30,)) ,
          ),

            Padding(
              padding:const  EdgeInsets.only(right: 26.0,top: 16),
              child: Text(note.date,style: TextStyle(color: Colors.white.withOpacity(.4)),),
            ),
          ],
        ),
      ),
    );
  }
}
