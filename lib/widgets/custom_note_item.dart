import 'dart:ui';

import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key, required this.color,}) : super(key: key);

  final Color color;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
        child: Container(
          padding:const EdgeInsets.only(top: 24,bottom: 24,left: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: color.withOpacity(.05),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [ListTile(
              title:const  Text("FLUTTER TIPS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text("3 videos in playlist every Flutter widget",style: TextStyle(color: Colors.white.withOpacity(.4)),),
              ),
              trailing:IconButton(onPressed: (){}, icon: const Icon(Icons.delete,size: 30,)) ,
            ),

              Padding(
                padding:const  EdgeInsets.only(right: 26.0,top: 16),
                child: Text("27 Nov ,2023",style: TextStyle(color: Colors.white.withOpacity(.4)),),
              ),
            ],
          ),
        ),) ,
    );
  }
}
