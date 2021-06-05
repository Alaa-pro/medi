import 'package:flutter/material.dart';

import 'package:medical/modules/note.dart';

import '../database.dart';

class NoteDetail extends StatefulWidget {


  final Note note;

  NoteDetail(this. note);

  @override
  State<StatefulWidget> createState() {

    return NoteDetailState(this.note);
  }
}

class NoteDetailState extends State<NoteDetail> {

  // static var _priorities = ['High', 'Low'];

  DatabaseHelper helper = DatabaseHelper();


  Note note;

  TextEditingController titleController = TextEditingController();

  TextEditingController mincont = TextEditingController();

  TextEditingController maxcont = TextEditingController();

  TextEditingController dosagecont = TextEditingController();

  TextEditingController mincont1 = TextEditingController();

  TextEditingController maxcont1 = TextEditingController();

  TextEditingController dosagecont1 = TextEditingController();

  TextEditingController mincont2 = TextEditingController();

  TextEditingController maxcont2 = TextEditingController();

  TextEditingController dosagecont2 = TextEditingController();

  NoteDetailState(this.note);



  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    titleController.text = note.title;
    // mincont.text = note.min;

    // descriptionController.text = note.description;

    return WillPopScope(

        // ignore: missing_return
        onWillPop: () {
          // Write some code to control things, when user press Back navigation button in device navigationBar
          moveToLastScreen();
        },

        child: Scaffold(
          appBar: AppBar(
            title: Text("Add Medical"),
            backgroundColor: Color(0xff3AD1B7),
            leading: IconButton(icon: Icon(
                Icons.arrow_back),
                onPressed: () {
                  // Write some code to control things, when user press back button in AppBar
                  moveToLastScreen();
                }
            ),
          ),

          body: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[

                // First element
                // ListTile(
                //   title: DropdownButton(
                //       items: _priorities.map((String dropDownStringItem) {
                //         return DropdownMenuItem<String> (
                //           value: dropDownStringItem,
                //           child: Text(dropDownStringItem),
                //         );
                //       }).toList(),
                //
                //       style: textStyle,
                //
                //       value: getPriorityAsString(note.priority),
                //
                //       onChanged: (valueSelectedByUser) {
                //         setState(() {
                //           debugPrint('User selected $valueSelectedByUser');
                //           updatePriorityAsInt(valueSelectedByUser);
                //         });
                //       }
                //   ),
                // ),

                // Second Element
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Title Text Field');
                      updateTitle();
                    },
                    decoration: InputDecoration(
                        labelText: 'Name Medical',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),
                Center(child: Text("clairence Renal",style: TextStyle(fontSize: 20),)),
              Row(
                children:[
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(child:TextField(
                    controller: mincont,
                  // style: textStyle,
                  onChanged: (value) {
                    // debugPrint('Something changed in Title Text Field');
                    updateMin();
                    },
                    decoration:InputDecoration(
                      labelText: "Min",
                    ),
                    keyboardType: TextInputType.number,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(child: TextField(
                    controller: maxcont,
                    // style: textStyle,
                    onChanged: (value) {
                      // debugPrint('Something changed in Title Text Field');
                      updateMax();
                    },
                    decoration:InputDecoration(
                      labelText: "Max",
                    ),
                    keyboardType: TextInputType.number,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(child: TextField(
                    controller: dosagecont,
                    // style: textStyle,
                    onChanged: (value) {
                      // debugPrint('Something changed in Title Text Field');
                      updateDosage();

                    },
                    decoration:InputDecoration(
                      labelText: "Dosage",
                    ),
                    keyboardType: TextInputType.number,
                  )),
                  SizedBox(
                    width: 20,
                  ),

                  ]),
                SizedBox(
                  height: 30,
                ),
                Center(child: Text("bilirubine",style: TextStyle(fontSize: 20),)),
                Row(
                    children:[
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(child:TextField(
                        controller: mincont1,
                        // style: textStyle,
                        onChanged: (value) {
                          // debugPrint('Something changed in Title Text Field');
                          updateMin1();
                        },
                        decoration:InputDecoration(
                          labelText: "Min",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: TextField(
                        controller: maxcont1,
                        // style: textStyle,
                        onChanged: (value) {
                          // debugPrint('Something changed in Title Text Field');
                          updateMax1();
                        },
                        decoration:InputDecoration(
                          labelText: "Max",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: TextField(
                        controller: dosagecont1,
                        // style: textStyle,
                        onChanged: (value) {
                          // debugPrint('Something changed in Title Text Field');
                          updateDosage1();

                        },
                        decoration:InputDecoration(
                          labelText: "Dosage",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                    ]),
                SizedBox(
                  height: 30,
                ),
                Center(child: Text("tgo/tgp",style: TextStyle(fontSize: 20),)),
                Row(
                    children:[
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(child:TextField(
                        controller: mincont2,
                        // style: textStyle,
                        onChanged: (value) {
                          // debugPrint('Something changed in Title Text Field');
                          updateMin2();
                        },
                        decoration:InputDecoration(
                          labelText: "Min",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: TextField(
                        controller: maxcont2,
                        // style: textStyle,
                        onChanged: (value) {
                          // debugPrint('Something changed in Title Text Field');
                          updateMax2();
                        },
                        decoration:InputDecoration(
                          labelText: "Max",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: TextField(
                        controller: dosagecont2,
                        // style: textStyle,
                        onChanged: (value) {
                          // debugPrint('Something changed in Title Text Field');
                          updateDosage2();

                        },
                        decoration:InputDecoration(
                          labelText: "Dosage",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                    ]),




              // Third Element

                SizedBox(
                  height: 30,
                ),
                // Fourth Element
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Color(0xff3AD1B7),
                          textColor: Colors.white,
                          child: Text(
                            'Save',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Save button clicked");
                              print('${titleController.text}');
                              print('${note.min}');
                              print('${note.max}');
                              print('${note.dosage}');

                              print('${note.min1}');
                              print('${note.max1}');
                              print('${note.dosage1}');

                              print('${note.min2}');
                              print('${note.max2}');
                              print('${note.dosage2}');
                              _save();
                            });
                          },
                          splashColor: Colors.blueAccent,
                        ),
                      ),

                      Container(width: 5.0,),

                      Expanded(
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Color(0xff3AD1B7),
                          textColor: Colors.white,
                          child: Text(
                            'Delete',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Delete button clicked");
                              _delete();
                            });
                          },
                          splashColor: Colors.red,

                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

        ));
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  // Convert the String priority in the form of integer before saving it to Database
  // void updatePriorityAsInt(String value) {
  //   switch (value) {
  //     case 'High':
  //       note.priority = 1;
  //       break;
  //     case 'Low':
  //       note.priority = 2;
  //       break;
  //   }
  // }

  // Convert int priority to String priority and display it to user in DropDown
  // String getPriorityAsString(int value) {
  //   String priority;
  //   switch (value) {
  //     case 1:
  //       priority = _priorities[0];  // 'High'
  //       break;
  //     case 2:
  //       priority = _priorities[1];  // 'Low'
  //       break;
  //   }
  //   return priority;
  // }

  // Update the title of Note object
  void updateTitle(){
    note.title = titleController.text;

  }

  // Update the min of Note object
  void updateMin() {
    note.min = int.parse(mincont.text);
  }
  void updateMin1() {
    note.min1 = int.parse(mincont1.text);
  }
  void updateMax() {
    note.max = int.parse(maxcont.text);
  }
  void updateMax1() {
    note.max1 = int.parse(maxcont1.text);
  }
  void updateDosage() {
    note.dosage = int.parse(dosagecont.text);
  }
  void updateDosage1() {
    note.dosage1 = int.parse(dosagecont1.text);
  }
  void updateMin2() {
    note.min2 = int.parse(mincont2.text);
  }
  void updateMax2() {
    note.max2 = int.parse(maxcont2.text);
  }
  void updateDosage2() {
    note.dosage2 = int.parse(dosagecont2.text);
  }
  // Update the description of Note object
  // void updateDescription() {
  //   note.description = descriptionController.text;
  // }

  // Save data to database
  void _save() async {

    moveToLastScreen();

    // note.date = DateFormat.yMMMd().format(DateTime.now());
    int result;
    if (note.id != null) {  // Case 1: Update operation
      result = await helper.updateNote(Note.fromMapObject({
        'id': note.id,
        'min': note.min,
        'max': note.max,
        'dosage': note.dosage,
        'min1': note.min1,
        'max1': note.max1,
        'dosage1': note.dosage1,
      }));
    } else { // Case 2: Insert Operation
      result = await helper.insertNote(note);
    }

    if (result != 0) {  // Success
      _showAlertDialog('Status', 'Note Saved Successfully');
    } else {  // Failure
      _showAlertDialog('Status', 'Problem Saving Note');
    }

  }

  void _delete() async {

    moveToLastScreen();

    // Case 1: If user is trying to delete the NEW NOTE i.e. he has come to
    // the detail page by pressing the FAB of NoteList page.
    if (note.id == null) {
      _showAlertDialog('Status', 'No Note was deleted');
      return;
    }

    // Case 2: User is trying to delete the old note that already has a valid ID.
    int result = await helper.deleteNote(note.id);
    if (result != 0) {
      _showAlertDialog('Status', 'Note Deleted Successfully');
    } else {
      _showAlertDialog('Status', 'Error Occured while Deleting Note');
    }
  }

  void _showAlertDialog(String title, String message) {

    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (_) => alertDialog
    );
  }

}




