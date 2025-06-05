import 'dart:ffi';

import 'package:application_01/routes.dart';
import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool changedbutton = false;
  String name = "";
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context)async{
    if(_formkey.currentState!.validate()){

      setState((){
        changedbutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState((){
        changedbutton = false;
      });

  }}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "images/teacher.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
               Text(
                "Welcome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                      )
                      ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Username can't be empty.";
                    }
                    return null;
                  },
                      onChanged: (value){
                        name = value;
                        setState((){
                          name = value;
                        });
                      },

                    ),

                    SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty.";
                          }
                          else if (value.length<6){
                            return "Password must have atleast 6 or more characters.";
                          }

                          return null;
                        }
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius:BorderRadius.circular(changedbutton? 50: 8),
                child: InkWell(
                  splashColor: Colors.deepPurple,
                  onTap: () => movetohome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1 ),
                    width: changedbutton? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changedbutton? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                    : Text("Login", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                  ),
                ),
              ),
              // ElevatedButton(
              //   style: TextButton.styleFrom(minimumSize: const Size(140, 40)),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeroute);
              //   },
              //   child: const Text("Login"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
