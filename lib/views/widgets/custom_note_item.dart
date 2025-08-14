import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
final noteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return const  EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24 , bottom: 20 ,left: 16 , ),
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title , style: TextStyle(color: Colors.black , fontSize: 26),),
              subtitle: Text(note.subTitle ,
                style: TextStyle(color: Colors.black38 ,
                    fontSize: 16),),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete , size: 24,) , color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(note.date ,style: TextStyle(color: Colors.black38),),
            )
          ],
        ),
      ),
    );
  }
}



