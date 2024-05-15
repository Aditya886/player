import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:player/Login.dart';
import 'package:player/create.dart';

class new_password extends StatefulWidget {
  @override
  State<new_password> createState() => _new_passwordState();
}

class _new_passwordState extends State<new_password> {

  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    var color = Colors.grey;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width * 0.9,
            child: Column(
              children: [
                SizedBox(
                  height: height > width ? height * 0.08 : height * 0.1,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create new password",
                    style: TextStyle(fontSize: height > width ? width * 0.1 : height * 0.1),
                  ),
                ),
                SizedBox(
                  height: height > width ? height * 0.08 : height * 0.15,
                ),
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: height * 0.015, horizontal: width * 0.05),
                    hintText: "New Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: color,
                          width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                  ),
                ),
                SizedBox(
                  height: height > width ? height * 0.02 : height * 0.05,
                ),
                Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: TextFormField(
                    controller: _confirmPassword,
                    validator: (value) {
                      final enteredPassword = value ?? '';
                      final password = _password.text ?? '';

                      if (enteredPassword != password) {
                        return "Passwords don't match";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: height * 0.015, horizontal: width * 0.05),
                      hintText: "Confirm Password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: color,
                            width: 2),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: color,
                            width: 2),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height > width ? height * 0.06 : height * 0.1,
                ),
                Container(
                  width: height > width ? width * 0.4 : width * 0.4,
                  height: height > width ? height * 0.05 : height * 0.13,
                  child: ElevatedButton(
                    onPressed: () {
                        if(_confirmPassword.text == _password.text) {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                        }
                        else{
                          setState(() {
                            color = Colors.red;
                          });
                        }

                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.lightBlueAccent.shade400,
                    ),
                    child: Text("Create",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: height > width ? height * 0.018 : height * 0.06,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}