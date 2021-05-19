import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bil extends StatelessWidget{
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(("bil")),
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Text1",
                      labelStyle: TextStyle(fontSize: 30,),
                      hintText: "EnterText",
                    ),
                    keyboardType: TextInputType.text,
                  )
              ),
              Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Text2",
                      labelStyle: TextStyle(fontSize: 30,),
                      hintText: "EnterText",
                    ),
                    keyboardType: TextInputType.number,
                  )
              ),
              Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Text3",
                      labelStyle: TextStyle(fontSize: 30,),
                      hintText: "EnterText",
                    ),
                    keyboardType: TextInputType.number,
                  )
              ),
              Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Text4",
                      labelStyle: TextStyle(fontSize: 30,),
                      hintText: "EnterText",
                    ),
                    keyboardType: TextInputType.number,
                  )
              ),

            ],
          ),
        )
        ),
    );
  }
}
