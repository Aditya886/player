import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:player/new_password.dart';

class Verify_device extends StatefulWidget {
  @override
  State<Verify_device> createState() => _Verify_deviceState();
}

class _Verify_deviceState extends State<Verify_device> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: width*0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height>width ? height*0.02 : height*0.02,
                  ),
                  Text("Verification Code",style: TextStyle(fontSize: width*0.066,fontWeight: FontWeight.w600),),
                  SizedBox(
                    height: height>width ? height*0.02 : height*0.04,
                  ),
                  Text("We have send the code verifcation to"),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                      child: Text("Change ?",style: TextStyle(color: Colors.blue.shade800,fontWeight: FontWeight.w700),)
                  ),
                  SizedBox(
                    height: height>width ? height*0.05 : height*0.1,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width*0.1,
                      ),
                      SizedBox(
                        width: width*0.1,
                        height: width*0.1,
                        child: TextField(
                          onChanged: (value) {
                            if(value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width*0.1,
                      ),
                      SizedBox(
                        width: width*0.1,
                        height: width*0.1,
                        child: TextField(
                          onChanged: (value) {
                            if(value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width*0.1,
                      ),
                      SizedBox(
                        width: width*0.1,
                        height: width*0.1,
                        child: TextField(
                          onChanged: (value) {
                            if(value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width*0.1,
                      ),
                      SizedBox(
                        width: width*0.1,
                        height: width*0.1,
                        child: TextField(
                          onChanged: (value) {
                            if(value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height*0.08,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: height>width ? width*0.5: width*0.4,
                      height: height>width ?  height*0.04 : height*0.1,
                      child: ElevatedButton(onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => new_password()));
                      },style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.lightBlueAccent.shade400),
                          child: Text("Verify",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: height>width ? height*0.018 : height*0.06),)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}