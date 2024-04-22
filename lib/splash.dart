import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player/create.dart';

class screen extends StatefulWidget {
  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => create()
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height ;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/music.png"),
                  fit: BoxFit.fill)
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2,sigmaY: 5),
              child: Container(
                color: Colors.transparent,
              ),
            )
          ),
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.music,size: 50,color: Colors.white,),
                SizedBox(
                  height: height*0.03,
                ),
                Text("Feel the Bass",
                      style: TextStyle(fontSize: 40,color: Colors.white,fontFamily: 'neon'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}