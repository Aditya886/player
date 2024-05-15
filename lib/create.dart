import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player/Login.dart';

class create extends StatefulWidget{
  @override
  State<create> createState() => _createState();
}
class _createState extends State<create> {

  final TextEditingController _name = TextEditingController();
  final TextEditingController _mail = TextEditingController();
  final TextEditingController _password = TextEditingController();

  var name = 'Name';
  var email = 'Email';
  var pass = 'Password';

  var box_color = Colors.grey.shade400;
  var text_color = Colors.grey.shade600;
  bool value = false;

  void _validateFields() {
    setState(() {
      if (_name.text.isEmpty || _mail.text.isEmpty || _password.text.isEmpty) {
        name = _name.text.isEmpty ? "Enter name" : "Name";
        email = _mail.text.isEmpty ? "Enter email" : "Email";
        pass = _password.text.isEmpty ? "Enter password" : "Password";
        text_color = box_color = Colors.redAccent;
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: width * 0.04, vertical: width * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(gradient:
                        LinearGradient(colors: [
                          Color(0xffa1c4fd),
                          Color(0xffc2e9fb)
                        ]), borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.music_note, color: Colors.grey.shade700,
                          size: 30,),
                      ),

                      SizedBox(
                        height: height * 0.01,
                      ),

                      Text("Welcome to Music World!",
                        style: TextStyle(color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),

                      SizedBox(
                        height: height * 0.01,
                      ),

                      Text("Create your account",
                        style: TextStyle(fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),

                      TextField(
                        controller: _name,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: height * 0.019),
                            prefixIcon: Icon(Icons.account_circle),
                            hintText: name,
                            hintStyle: TextStyle(letterSpacing: 2,color: text_color),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: box_color,
                                    width: 2
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 2
                                )
                            )
                        ),
                      ),

                      SizedBox(
                        height: height * 0.01,
                      ),

                      Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: TextFormField(
                          validator: (value) {
                            if(value == null || !value.contains("@gmail.")) {
                              return 'Please enter a valid Gmail address';
                            }
                            return null;
                          },
                          controller: _mail,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade300,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: height * 0.019),
                              prefixIcon: Icon(Icons.mail),
                              hintText: email,
                              hintStyle: TextStyle(letterSpacing: 2,color: text_color),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: box_color,
                                      width: 2
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.redAccent,
                                      width: 2
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.lightBlueAccent,
                                      width: 2
                                  )
                              )
                          ),
                        ),
                      ),

                      SizedBox(
                        height: height * 0.01,
                      ),

                      TextField(
                        controller: _password,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: height * 0.019),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            prefixIcon: Icon(Icons.lock),
                            hintText: pass,
                            // suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),),
                            hintStyle: TextStyle(letterSpacing: 2,color: text_color),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: box_color,
                                    width: 2
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.lightBlueAccent,
                                    width: 2
                                )
                            )
                        ),
                      ),

                      SizedBox(
                        height: height * 0.02,
                      ),

                      InkWell(
                        onTap: _validateFields,
                        child: Container(
                          height: height > width ? width * 0.125 : height *
                              0.13,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff84fab0),
                                Color(0xff8fd3f4)
                              ]),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(
                              child: Text("Create",
                                style: TextStyle(color: Colors.grey.shade800,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              )
                          ),
                        ),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Divider(
                            thickness: 1,
                            height: height > width ? height * 0.09 : height *
                                0.25,
                            color: Colors.grey,)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text("Or continue with",
                              style: TextStyle(color: Colors.grey),),
                          ),
                          Expanded(child: Divider(
                            thickness: 1,
                            height: height * 0.09,
                            color: Colors.grey,)),
                        ],
                      ),

                      Container(
                        height: height > width ? width * 0.125 : height * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/google.png'),
                              width: width * 0.08,),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Sign up with Google", style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),

                      SizedBox(
                        height: height > width ? height * 0.04 : height * 0.08,
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?  "),
                          InkWell(onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (context) => login()));
                          }, child: Text("Login",
                            style: TextStyle(color: Colors.lightBlueAccent),))
                        ],
                      )
                    ],
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}