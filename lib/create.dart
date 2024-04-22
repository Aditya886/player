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

  bool value = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: width*0.91,
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
                  ]),borderRadius: BorderRadius.circular(10)  ),
                    child: Icon(Icons.music_note,color: Colors.grey.shade700,size: 30,),
                  ),

                  SizedBox(
                    height: height*0.01,
                  ),

                  Text("Welcome to Music World!",
                    style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w400),
                  ),

                  SizedBox(
                    height: height*0.01,
                  ),

                  Text("Create your account",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black),
                  ),
                  SizedBox(
                    height: height*0.03,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical:height*0.019),
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "Name",
                      hintStyle: TextStyle(letterSpacing: 2),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 2
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color:Colors.lightBlueAccent,
                          width: 2
                        )
                      )
                    ),
                  ),

                  SizedBox(
                    height: height*0.01,
                  ),

                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical:height*0.019),
                        prefixIcon: Icon(Icons.mail),
                        hintText: "Email" ,
                        hintStyle: TextStyle(letterSpacing: 2),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 2
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color:Colors.lightBlueAccent,
                                width: 2
                            )
                        )
                    ),
                  ),

                  SizedBox(
                    height: height*0.01,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical:height*0.019),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Password",
                        // suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),),
                        hintStyle: TextStyle(letterSpacing: 2),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400,
                                width: 2
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color:Colors.lightBlueAccent,
                                width: 2
                            )
                        )
                    ),
                  ),

                  SizedBox(
                    height: height*0.02,
                  ),

                  InkWell(
                    onTap: () {
                      setState(() {
                        BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xff8fd3f4),
                              Color(0xff84fab0)
                            ])
                        );
                      });
                    },
                    child: Container(
                      height: height*0.06,
                      width: width*1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xff84fab0),
                          Color(0xff8fd3f4)
                        ]),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                          child: Text("Create",
                            style: TextStyle(color: Colors.grey.shade800,fontWeight: FontWeight.w700,fontSize: 20),
                          )
                      ),
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider(thickness: 1,height: height*0.09,color: Colors.grey,)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text("Or continue with",style: TextStyle(color: Colors.grey),),
                      ),
                      Expanded(child: Divider(thickness: 1,height: height*0.09,color: Colors.grey,)),
                    ],
                  ),

                  Container(
                    height: height*0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/images/google.png'),width: width*0.08,),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Sign up with Google",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),

                  SizedBox(
                    height: height*0.04,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?  "),
                      InkWell(onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                      },child: Text("Login",style: TextStyle(color: Colors.lightBlueAccent),))
                    ],
                  )
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}