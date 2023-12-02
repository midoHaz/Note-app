import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines=1, this.onSaved}) : super(key: key);
 final String hint;
 final int maxLines;
 final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty??true){
          return "This field is required";
        }else{
          return null;
        }
      },
      decoration: InputDecoration(
        hintText:hint,
        hintStyle:const  TextStyle(color: kPrimaryColor),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(kPrimaryColor)
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide:BorderSide(color: color ?? Colors.white)
      );
  }
}
