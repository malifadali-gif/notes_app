import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'add_note_form.dart';
import 'custom_buttom.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('failed ${state.errMessage}');
          }
          if (state is AddNoteSucces) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false ,
            child:  Padding(
              padding:  EdgeInsets.only(
                  left: 16 ,
                  right: 16 ,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child:  SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
