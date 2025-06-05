import 'package:application_01/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageurl = "https://avatars.githubusercontent.com/u/56469861?v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.yellow.shade800,        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade800
                  ),
                  accountName: Text("Siddhartha Trivedi", style: TextStyle(color: Colors.white),),
                  accountEmail: Text("siddharthatrivedi@s.amity.edu",style: TextStyle(color: Colors.white)),
                )),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },

              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home",
                style: TextStyle(color: Colors.white,
              ),
              textScaleFactor: 1.2,
              ),

            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.calroute);
              },
              leading: Icon(CupertinoIcons.calendar, color: Colors.white,),
              title: Text("My Calendar",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.book_circle, color: Colors.white,),
              title: Text("My Courses",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.time, color: Colors.white,),
              title: Text("Time Table",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.money_dollar_circle, color: Colors.white,),
              title: Text("Fees Details",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.cube_box, color: Colors.white,),
              title: Text("Suggestion Box",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.wifi, color: Colors.white,),
              title: Text("Register for WIFI",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.bus, color: Colors.white,),
              title: Text("Apply for Transport",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),

            ),
            ListTile(
              leading: Icon(CupertinoIcons.camera, color: Colors.white,),
              title: Text("Scanner",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.loginroute);
              },
              leading: Icon(CupertinoIcons.power, color: Colors.white,),
              title: Text("Log Out",
                style: TextStyle(color: Colors.white,
                ),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ) );
  }
}
