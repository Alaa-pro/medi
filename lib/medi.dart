

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Medi extends StatelessWidget{
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    final List<String> e = <String>['Asprin', 'Bamadol', 'Colorent'];
    final List<int> colorCodes = <int>[600, 500, 100];
    _showfromDialog(BuildContext context){
      return showDialog(context: context, builder: (parm){
        return AlertDialog(
          title: Text("Add medi"),
          content: SingleChildScrollView(
            child: Container(
              width: 700,
            height: 400,
            child: Column(
              children: [
                TextField(
                  decoration:InputDecoration(
                    labelText: "Name Medical",
                    hintText: "Text",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children:[
                    Text("La clairence Renal"),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(child:TextField(

                      decoration:InputDecoration(
                        labelText: "Min",
                      ),
                      keyboardType: TextInputType.number,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(child: TextField(
                      decoration:InputDecoration(
                        labelText: "Max",
                      ),
                      keyboardType: TextInputType.number,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(child: TextField(
                      decoration:InputDecoration(
                        labelText: "Reuslt",
                      ),
                      keyboardType: TextInputType.number,
                    )),
                    SizedBox(
                      height: 10,
                    ),


                        ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    children:[
                      Text("la bilirubine"),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child:TextField(
                        decoration:InputDecoration(
                          labelText: "Min",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: TextField(
                        decoration:InputDecoration(
                          labelText: "Max",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: TextField(
                        decoration:InputDecoration(
                          labelText: "Result",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        height: 10,
                      ),


                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                    children:[
                      Text("tgo/tgp"),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child:TextField(
                        decoration:InputDecoration(
                          labelText: "Min",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: TextField(
                        decoration:InputDecoration(
                          labelText: "Max",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: TextField(
                        decoration:InputDecoration(
                          labelText: "Result",
                        ),
                        keyboardType: TextInputType.number,
                      )),
                      SizedBox(
                        height: 10,
                      ),


                    ]),
              ],
            ),
          ),
          )

        );
      });
    }
    // TODO: implement build
  return Scaffold(
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      title: Text("medi"),
      centerTitle: true,
      backgroundColor: Color(0xff3AD1B7),
      elevation: 0,
    ),

    body: Container(
      decoration: BoxDecoration(

        image: DecorationImage(
              image: AssetImage("images/ss.png"),
              fit: BoxFit.cover,
            ),

          ),

          child: Center(
           child: ListView.separated(
             padding: const EdgeInsets.only(left: 30,right: 30,top: 150),
             itemCount: e.length,
             itemBuilder: (BuildContext context, int index) {
               return Container(
                 height: 50,
                 color: Colors.amber[colorCodes[index]],
                 // ignore: deprecated_member_use
                 child: RaisedButton(
                   onPressed: () {},
                   child: Text(
                     ' ${e[index]}',

                   ),
                    color: Color(0xffFBD99E),//[colorCodes[index]],
                 ),
               );
             },
             separatorBuilder: (BuildContext context, int index) => const Divider(),
           )

      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Color(0xff3AD1B7),
      child: Icon(Icons.add,),
      onPressed: () {
        _showfromDialog(context);
      },

    ),
    bottomNavigationBar: BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: Color(0xff3AD1B7),


      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
            IconButton(icon: Icon(Icons.delete,color: Colors.white,), onPressed: null),


          ],
        ),

      ),
    ),

    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

  );
  }
}


