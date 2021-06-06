import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/modules/meddi.dart';

import 'package:medical/screen/selectmedi.dart';

class B extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {

    return Bil();
  }
}

class Bil extends State<B> {
  Note note;
  MediListState ggg;
  bool t=false,t1=false,t2=false;
  static int s,s1,s2,s3,s4,s5,s6,s7,s8;
  int q1,q2,q3,min,m;
  int str=0;
  TextEditingController cont1=TextEditingController();
  TextEditingController cont2=TextEditingController();
  TextEditingController cont3=TextEditingController();
  List<Note> noteList;
  int count = 0;

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
                    Center(child: Text("clairence Renal",style: TextStyle(fontSize: 20),)),
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
                    Center(child: Text("bilirubine",style: TextStyle(fontSize: 20),)),
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
                    Center(child: Text("tgo/tgp",style: TextStyle(fontSize: 20),)),
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
                        ]),
                    SizedBox(height: 30,),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      padding:EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                      color: Color(0xff3AD1B7),
                      textColor: Colors.white,
                      child: Text(
                        'Select',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontSize: 23),
                      ),
                      onPressed: () {

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) {
                              return GGg();

                            }
                        ));
                        // print('${int.parse(cont1.text)}');
                        // print('${int.parse(cont2.text)}');
                        // print('${int.parse(cont3.text)}');

                      },
                      splashColor: Colors.deepOrange,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      // padding:EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                      color: Color(0xff3AD1B7),
                      textColor: Colors.white,
                      child: Text(
                        'Result',
                        textScaleFactor: 1.5,
                        style: TextStyle(fontSize: 23),
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("Result button clicked");
                          print(clrr(cont1));
                          print(bil(cont2));
                          print(tpo(cont3));
                          if(clrr(cont1)<bil(cont2)&&clrr(cont1)<tpo(cont3))
                            min=clrr(cont1);
                          if(bil(cont2)<clrr(cont1)&&bil(cont2)<tpo(cont3))
                            min=bil(cont2);
                          if(tpo(cont3)<bil(cont2)&&tpo(cont3)<clrr(cont1))
                            min=tpo(cont3);
                          print('$min');

                        });

                      },
                    ),
                    SizedBox(height: 50,),
                    Text('$min'),

                  ]),

            )
        ),

      ),
    );
  }
  Bil([int d,int d1,int d2,int d3,int d4,int d5,int d6,int d7,int d8]){
    s=d;
    s1=d1;
    s2=d2;
    s3=d3;
    s4=d4;
    s5=d5;
    s6=d6;
    s7=d7;
    s8=d8;

  }

  int clrr(cont1) {
    q1 = int.parse(cont1.text);
    if (q1 < s) {
      return 0;
    } else {
      if ((s < q1 && q1 < s1))
        return  s2 ;
      else {
        return 100;
      }
    }
  }

   bil(cont2) {
    q2 = int.parse(cont2.text);

    if (q2 < s3) {
      return 0;
    } else {
      if ((s3 < q2 && q2 < s4))
        return s5;
      else {
        return 100;
      }
    }
  }

   tpo(cont3) {
    q3 = int.parse(cont3.text);
    if (q3 < s6) {
      return 0;
    } else {
      if ((s6 < q3 && q3 < s7))
        return s8 ;
      else {
        return 100;
      }
    }
  }

}
