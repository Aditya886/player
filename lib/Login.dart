import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:player/create.dart';
import 'package:player/forget_password.dart';
import 'package:player/main_screen.dart';
import 'package:player/navbar.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    final TextEditingController _email = TextEditingController();
    final TextEditingController _login_password = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: width*0.04,vertical: width*0.03),
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
                      child: Icon(Icons.music_note, color: Colors.grey.shade700,
                        size: 30,),
                    ),
        
                    SizedBox(
                      height: height * 0.01,
                    ),
        
                    Text("Music World!",
                      style: TextStyle(color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
        
                    SizedBox(
                      height: height * 0.01,
                    ),
        
                    Text("Sign in to your account",
                      style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
        
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: TextFormField(
                        controller: _email,
                        validator: (value) {
                          if (value == null || !value.contains('@gmail.')) {
                            return 'Please enter a valid Gmail address';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: height * 0.019),
                            prefixIcon: Icon(Icons.mail),
                            hintText: "Email",
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
        
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: TextFormField(
                        controller: _login_password,
                        validator: (value) {
                          return null;
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: height * 0.019),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Password",
                            hintStyle: TextStyle(letterSpacing: 2),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade400,
                                    width: 2
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.red,
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
        
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => password()));
                      },child: Text("Forget Password",style: TextStyle(),),),
                    ),
        
                    SizedBox(
                      height: height * 0.02,
                    ),
        
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Container(
                        height: height>width ?  width*0.125 : height*0.13,
                        width: width * 1,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xff84fab0),
                              Color(0xff8fd3f4)
                            ]),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                            child: Text("Sign in",
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
                        Expanded(child: Divider(thickness: 1,
                          height: height>width ? height*0.09 : height*0.25,
                          color: Colors.grey,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Or continue with", style: TextStyle(
                              color: Colors.grey),),
                        ),
                        Expanded(child: Divider(thickness: 1,
                          height: height * 0.09,
                          color: Colors.grey,)),
                      ],
                    ),
        
                    Container(
                      height: height>width ?  width*0.125 : height*0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/google.png'),
                            width: width * 0.08,),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Sign in with Google", style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),
        
                    SizedBox(
                      height: height>width ? height*0.04 : height*0.08,
                    ),
        
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?  "),
                        InkWell(onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => create()));
                        }, child: Text("Signup", style: TextStyle(color: Colors
                            .lightBlueAccent),))
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