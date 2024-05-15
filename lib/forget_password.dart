import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:player/verify_device.dart';

class password extends StatefulWidget {
  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Define GlobalKey

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login help",
          style: TextStyle(letterSpacing: 0, fontWeight: FontWeight.w600),
        ),
        titleSpacing: 0,
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.005),
            child: Column(
              children: [
                SizedBox(
                  height: height > width ? height * 0.03 : height * 0.1,
                ),
                Text(
                  "Forget password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  width: width * 0.6,
                  child: Text(
                    "Enter your username or the email or phone number linked to your account",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Form(
                        key: _formKey, // Assign GlobalKey to the Form
                        autovalidateMode: AutovalidateMode.disabled,
                        child: TextFormField(
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Please enter detail';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            hintText: "Phone number, email or username",
                            hintStyle: TextStyle(color: Colors.grey.shade500),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.lightBlueAccent,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height > width ? height * 0.02 : height * 0.05,
                      ),
                      Container(
                        width: width * 1,
                        height: height > width ? width * 0.12 : width * 0.06,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Verify_device()));
                            } else {
                              // Form is invalid, display error message
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      'Please fix the errors in the form'),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.lightBlueAccent,
                          ),
                          child: Text(
                            "Send",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


