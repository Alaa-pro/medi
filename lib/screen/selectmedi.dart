import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/modules/meddi.dart';

import 'package:sqflite/sqflite.dart';
import '../bil.dart';
import '../database.dart';
import 'medi_detail.dart';

class GGg extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return MediListState();
  }
}

class MediListState extends State<GGg> {



  DatabaseHelper databaseHelper = DatabaseHelper();
  Note note;
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
      body:getNoteListView(),
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

            subtitle: Text('${noteList[position].min}-${noteList[position].max}-${noteList[position].dosage}/'
                '${noteList[position].min1}-${noteList[position].max1}-${noteList[position].dosage1}/'
                '${noteList[position].min2}-${noteList[position].max2}-${noteList[position].dosage2}'),

            onTap: () {
              debugPrint("ListTile Tapped");


              int w=noteList[position].min;
              int w1=noteList[position].max;
              int w2=noteList[position].dosage;
              int w3=noteList[position].min1;
              int w4=noteList[position].max1;
              int w5=noteList[position].dosage1;
              int w6=noteList[position].min2;
              int w7=noteList[position].max2;
              int w8=noteList[position].dosage2;
                Bil(w,w1,w2,w3,w4,w5,w6,w7,w8);
              moveToLastScreen();
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
  void calcul(w){
    if (w>5)
    print('$w');
  }


  save() async {

  }
  void moveToLastScreen() {
    Navigator.pop(context, true);
  }
}