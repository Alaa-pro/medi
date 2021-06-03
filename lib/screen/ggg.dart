import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/modules/note.dart';
import 'package:sqflite/sqflite.dart';
import '../database.dart';
import 'note_detail.dart';

class GGg extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return NoteListState();
  }
}

class NoteListState extends State<GGg> {

  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;

  @override
  Widget build(BuildContext context) {

    if (noteList == null) {
      // ignore: deprecated_member_use
      noteList = List<Note>();
      updateListView();
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("list"),
        centerTitle: true,
        backgroundColor: Color(0xff3AD1B7),
        elevation: 0,),
      body: getNoteListView(),
    );
  }

  ListView getNoteListView() {

    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(

            title: Text(this.noteList[position].title, style: titleStyle,),

            subtitle: Text('${noteList[position].min}-${noteList[position].max}-${noteList[position].dosage}'),

            onTap: () async {
              debugPrint("ListTile Tapped");
              // navigateToDetail(this.noteList[position],'Edit Note');
              _select(context, noteList[position]);
            },

          ),
        );
      },
    );
  }


  void navigateToDetail(Note note, String title) async {
    bool result = await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail(note);
    }));

    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {

    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {

      Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
      noteListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          this.count = noteList.length;
        });
      });
    });
  }
  void _select(BuildContext context, Note note)  {

    databaseHelper.getNote(note.id);
    int w=note.min;
    int w1=note.max;
    int w2=note.dosage;

    print('$w');
    print('$w1');
    print('$w2');

  }
  void calc(int q){
    Note note;
    databaseHelper.getNote(note.id);
    int w=note.min;
    int w1=note.max;
    int w2=note.dosage;

      print('hey!!!!!!!!');
      print('$q');
  }
}