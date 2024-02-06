import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color= const Color(0xffAC3931);
  addNote(NoteModel note) async {
    note.color=color.value;
    emit(AddNoteLoading());
  try {
    var noteBox=Hive.box<NoteModel>(kNotesBox);
    await noteBox.add(note);
    emit(AddNoteSuccess());
  }  catch (e) {
    emit(AddNoteFailure(e.toString()));
  }
  }
}
