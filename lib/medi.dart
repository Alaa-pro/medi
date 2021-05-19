

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Medi extends StatelessWidget{
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
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
              image: AssetImage("images/kk.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
           child: ListView(
            padding: const EdgeInsets.only(right: 20,left: 20,top: 80),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('A')),
              ),SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('B')),
              ),SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('C')),
              ),SizedBox(
                height: 10,
              ),
            ],
          )

      ),
    ),
    // floatingActionButton: FloatingActionButton(
    //   child: Icon(Icons.add),
    //   onPressed: () {},
    //
    // ),
    // bottomNavigationBar: BottomAppBar(
    //   shape: CircularNotchedRectangle(),
    //   notchMargin: 8.0,
    //   color: Colors.blue,
    //   child: Container(
    //     height: 50,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null),
    //         IconButton(icon: Icon(Icons.delete,color: Colors.white,), onPressed: null),
    //
    //
    //       ],
    //     ),
    //
    //   ),
    // ),
    //
    // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

  );
  }
}
