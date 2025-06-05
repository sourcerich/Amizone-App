import 'package:application_01/drawer.dart';
import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        title:  Text("Amizone", style: TextStyle(color: Colors.white,),),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
          child: Container(
            child:  Text("Welcome guys!"),
      )),
      drawer:  MyDrawer(),
    );
  }
}
