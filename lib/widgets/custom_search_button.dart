import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({Key? key, required this.icon}) : super(key: key);
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.white.withOpacity(.01)),
      height: 50,
      width: 50,
      child: Center(
        child:Icon(icon,size: 28,),
      ),
    );
  }
}
