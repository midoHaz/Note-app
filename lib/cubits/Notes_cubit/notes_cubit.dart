import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchNotes()async{
    try {
      var noteBox=Hive.box<NoteModel>(kNotesBox);
      emit(NotesSuccess( noteBox.values.toList()));
    }  catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
