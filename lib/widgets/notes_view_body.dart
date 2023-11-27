import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 60,),
          const CustomAppBar(),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black45,
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [ListTile(
                  title:const  Text("FLUTTER TIPS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  subtitle:const Text("3 videos in playlist every Flutter widget",style: TextStyle(color: Colors.white),),
                  trailing:IconButton(onPressed: (){}, icon: const Icon(Icons.delete)) ,
                ),

                  const Text("27 Nov ,2023",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),) ,
          )
        ],
      ),
    );
  }
}
