import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/bil.dart';

import 'medi.dart';

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
              image: AssetImage("images/Group 1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(children: [
            Positioned(
                left: 82, top: 545,
                width: 62,
                height: 62,
                // ignore: deprecated_member_use
                child: FlatButton(color: Colors.transparent,
                 // splashColor: Colors.black26,
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) {
                        return Medi();
                      }
                  ));
                  },
                  child: null,

                  // Image.asset("images/Medicine.png"))
            )),
            Positioned(
                right: 82, top: 545,
                width: 62,
                height: 62,
                // ignore: deprecated_member_use
                child: FlatButton(color: Colors.transparent,
                 // splashColor: Colors.black26,
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) {
                        return Bil();
                      }
                  ));
                  },
                  child: null,

                  // Image.asset("images/Medicine.png"))
                )),
          ]),
        ));
  }
}
