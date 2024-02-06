import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({Key? key, required this.icon, this.onPressed}) : super(key: key);
 final IconData icon;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.01),
      ),
      height: 50,
      width: 50,
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: 28,
          ),
        ),
      ),
    );
  }
}
