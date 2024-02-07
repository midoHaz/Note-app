import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/edit_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60,),
            CustomAppBar(title: 'Edit Notes',icon: Icons.check,onPressed: (){
              widget.note.title=title??widget.note.title;
              widget.note.subTitle=content??widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotesView()));
              setState(() {
              });
              },
            ),
            const SizedBox(
              height: 35,
            ),
            CustomTextField(
              hint: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              hint: widget.note.subTitle,
              maxLines: 6,
              onChanged: (value) {
                content = value;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            EditColorNotes(
              note: widget.note,
            )
          ],
        ),
      ),
    );
  }
}
