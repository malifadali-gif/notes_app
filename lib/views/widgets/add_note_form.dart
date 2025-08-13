
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextField(
            onSaved: (value)
            {
              title = value;
            },
            hint: 'Title',),
          const SizedBox(height: 16,) ,
          CustomTextField(
            onSaved: (value)
            {
              subTitle = value;
            },
            hint: 'Content', maxlines: 5,),
          const SizedBox(height: 80,),
          CustomButtom(
            onTap: ()
            {
              if(formKey.currentState!.validate())
              {
                formKey.currentState!.save();
var NoteModel = noteModel(
    title: title!,
    subTitle: subTitle!,
    date: DateTime.now().toString(),
    color: Colors.indigo.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(NoteModel);
              }else{
                autovalidateMode =AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          SizedBox(height: 60,)
        ],
      ),
    );
  }
}

