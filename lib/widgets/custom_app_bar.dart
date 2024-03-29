import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);
  final String title;
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text(title,style:const  TextStyle(fontSize: 30,fontFamily: 'Lobster'),),
        CustomSearchButton(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}
