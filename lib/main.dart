import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/bil.dart';
import 'package:medical/screen/medi.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(("App")),
          centerTitle: true,
          backgroundColor: Color(0xff3AD1B7),
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/aa.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(children: [
            Positioned(
                left: 76, top: 553,
                width: 70,
                height: 70,

                // ignore: deprecated_member_use
                child: IconButton(
                  icon:Icon(Icons.arrow_drop_down, size: 50.0,color: Color(0xff3AD1B7,)),
                  // icon: Icon(Icons.search,color: Color(0xff3AD1B7, )),
                 // splashColor: Colors.black26,
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) {
                        return NoteList();
                      }
                  ));
                  },


            )
            ),
            Positioned(
                right: 70, top: 545,
                width: 62,
                height: 62,
                child: IconButton(
                  icon:Icon(Icons.arrow_right, size: 50.0,color: Color(0xff3AD1B7,)),
                 // splashColor: Colors.black26,
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) {
                        return B();
                      }
                  ));
                  },



                )),
            

            

          ]),
        ));
  }
}
