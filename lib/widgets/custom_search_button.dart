import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.white.withOpacity(.01)),
      height: 50,
      width: 50,
      child: const Center(
        child:Icon(Icons.search_rounded,size: 28,),
      ),
    );
  }
}
