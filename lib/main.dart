import 'package:application_01/home_page.dart';
import 'package:application_01/login_page.dart';
import 'package:application_01/mycalendar.dart';
import 'package:application_01/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/": (context) => login_page(),
        MyRoutes.homeroute: (context) => home_page(),
        MyRoutes.loginroute: (context) => login_page(),
        MyRoutes.calroute: (context) => my_calendar()
      },
    );
  }
}
