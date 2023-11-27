import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text("Notes App",style: TextStyle(fontSize: 30),),
        CustomSearchButton(),
      ],
    );
  }
}
