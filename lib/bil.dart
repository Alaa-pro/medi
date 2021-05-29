import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/modules/note.dart';
// ignore: must_be_immutable
class Bil extends StatelessWidget{
  Note note;
  TextEditingController cont1=TextEditingController();
  TextEditingController cont2=TextEditingController();
  TextEditingController cont3=TextEditingController();

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        title: Text(("bil")),
        backgroundColor:Color(0xff3AD1B7),
      ),
      body: Container(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 120),
              // decoration: BoxDecoration(
              // image: DecorationImage(
              // image: AssetImage("images/qq.png"),
              // fit: BoxFit.cover,
              // ),
              // ),
       //


            child: SingleChildScrollView(
              child: Center(
                child: Column(
                      children:[
                          Center(child: Text("La clairence Renal",style: TextStyle(fontSize: 20),)),
                                Row(
                                    children:[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Flexible(child:TextField(
                                        controller: cont1,
                                        // style: textStyle,
                                        onChanged: (value) {
                                          // debugPrint('Something changed in Title Text Field');
                                          // updateMin();
                                        },
                                        decoration:InputDecoration(
                                          labelText: "1",
                                        ),
                                        keyboardType: TextInputType.number,
                                      )),
                                      SizedBox(
                                        width: 10,
                                      ),



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
                                        controller: cont2,
                                        // style: textStyle,
                                        onChanged: (value) {
                                          // debugPrint('Something changed in Title Text Field');
                                          // updateMin();
                                        },
                                        decoration:InputDecoration(
                                          labelText: "2",
                                        ),
                                        keyboardType: TextInputType.number,
                                      )),
                                      SizedBox(
                                        width: 10,
                                      ),

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
                                        controller: cont3,
                                        // style: textStyle,
                                        onChanged: (value) {
                                          // debugPrint('Something changed in Title Text Field');
                                          // updateMin();
                                        },
                                        decoration:InputDecoration(
                                          labelText: "3",
                                        ),
                                        keyboardType: TextInputType.number,
                                      )),

                                      SizedBox(
                                        width: 20,
                                      ),]),
                          SizedBox(
                            height: 40,
                          ),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            padding:EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                            color: Color(0xff3AD1B7),
                            textColor: Colors.white,
                            child: Text(
                              'Result',
                              textScaleFactor: 1.5,
                              style: TextStyle(fontSize: 23),
                            ),
                            onPressed: () {

                                debugPrint("Result button clicked");

                                _Calcule();

                            },
                            splashColor: Colors.deepOrange,

                          ),

                      ]
                    )
          ),
            ),

    )
    );
  }
  void _Calcule() async {

    int s1 = int.parse(cont1.text);
    int s2 = int.parse(cont2.text);
    int s3 = int.parse(cont3.text);
    if (s1>20) {
      print('done!');
    }
    if (s2>20) {
      print('done!');
    }
    if (s3>20) {
      print('done!');
    }
  }
}
