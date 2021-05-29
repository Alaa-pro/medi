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
                Center(child: Text("La clairence Renal",style: TextStyle(fontSize: 20),)),
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
                Center(child: Text("La clairence Renal",style: TextStyle(fontSize: 20),)),
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
                Center(child: Text("La clairence Renal",style: TextStyle(fontSize: 20),)),
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
  void updateMax() {
    note.max = int.parse(maxcont.text);
  }
  void updateDosage() {
    note.dosage = int.parse(dosagecont.text);
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
      result = await helper.updateNote(note);
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




