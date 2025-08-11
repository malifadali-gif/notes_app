import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 50,),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50,),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 40,),
          CustomTextField(hint: 'Content' , maxlines: 5,),
        ],
      ),
    );
  }
}
