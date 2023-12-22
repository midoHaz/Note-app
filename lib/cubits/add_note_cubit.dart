import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
  try {
    var noteBox=Hive.box<NoteModel>(kNotesBox);
    await noteBox.add(note);
    emit(AddNoteSuccess());
  }  catch (e) {
    AddNoteFailure(e.toString());
  }
  }
}
