import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'custom_buttom.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: const Column(
          children: [
            SizedBox(height: 32,),
           CustomTextField(hint: 'Title',),
            SizedBox(height: 16,) ,
            CustomTextField(hint: 'Content', maxlines: 5,),
           SizedBox(height: 80,),
            CustomButtom(),
            SizedBox(height: 60,)
          ],
        ),
      ),
    );
  }
}

