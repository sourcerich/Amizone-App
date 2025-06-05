import 'dart:ffi';

import 'package:application_01/drawer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class my_calendar extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("My Calendar"),
    backgroundColor: Colors.indigo,
  ),
  body: Center(
    child: TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
    )
  ),
  drawer: MyDrawer(),
);
}
}
