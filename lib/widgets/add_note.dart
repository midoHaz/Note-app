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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomTextField(hint: 'Title',onSaved: (value){
            title=value;
          },),
          const SizedBox(height: 24,),
           CustomTextField(hint: 'Content',maxLines: 4,onSaved: (value){
            subTitle=value;
          }),
          const SizedBox(height: 32,),
          CustomButton(onTap: (){
            if(formkey.currentState!.validate()){
              formkey.currentState!.save();
            }else{
              autovalidateMode=AutovalidateMode.always;
            }
          },),
          const SizedBox(height: 32,),

        ],
      ),
    );
  }
}
