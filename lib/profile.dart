import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  late TextEditingController _controller;
  bool name = false;
  bool mail = false;
  bool lang = false;
  bool priv = false;
  bool audi = false;

  List<String> language = [ "Hindi", "English","Spanic","Franch","Arbie"];
  List<String> Privacy = ["Change Password", "Contect us", "Terms & Privacy"];
  List<String> audio = ["Mp3", "Mp4", "WMA", "ACC"];

  IconData icon = Icons.keyboard_arrow_down_outlined;
  IconData icon1 = Icons.keyboard_arrow_down_outlined;
  IconData icon2 = Icons.keyboard_arrow_down_outlined;
  IconData icon3 = Icons.keyboard_arrow_down_outlined;
  IconData icon4 = Icons.keyboard_arrow_down_outlined;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: width*0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: height*0.08,
                    foregroundImage: AssetImage("assets/images/dp.jpeg"),
                  ),
                ),
                SizedBox(
                  height: height*0.008,
                ),
          
                Align(
                  alignment: Alignment.center,
                  child: Text("User",
                    style: TextStyle(fontSize: height*0.034,fontWeight: FontWeight.w600),
                  ),
                ),
          
                SizedBox(
                  height: height*0.05,
                ),
          
                Text("Persnal information",
                  style: TextStyle(fontSize: height*0.026),
                ),
          
                SizedBox(
                  height: height*0.02,
                ),
          
                InkWell(
                  onTap: () {
                    setState(() {
                      name = !name;
                      icon = !name ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up;
                    });
                  },
                  child: Container(
                    width: width*0.88,
                    height: height*0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Name",style: TextStyle(fontSize: height*0.022,fontWeight: FontWeight.w600),),
                        Icon(icon,size: 30,),
                      ],
                    ),
                  ),
                ),
          
                if (name)
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter your name...',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () {
                          // Process the entered text
                          print('${_controller.text}');
                          // Clear the text field
                          _controller.clear();
                          // Hide the text field
                          setState(() {
                            name = false;
                            icon = !name ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up;
                          });
                        },
                      ),
                    ),
                  ),
          
                InkWell(
                  onTap: () {
                    setState(() {
                      mail = !mail;
                      icon1 = !mail ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up;
                    });
                  },
                  child: Container(
                    width: width*0.88,
                    height: height*0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Email",style: TextStyle(fontSize: height*0.022,fontWeight: FontWeight.w600),),
                        Icon(icon1,size: 30,),
                      ],
                    ),
                  ),
                ),
          
                if (mail)
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () {
                          // Process the entered text
                          print('${_controller.text}');
                          // Clear the text field
                          _controller.clear();
                          // Hide the text field
                          setState(() {
                            mail = false;
                            icon1 = !name ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up;                        });
                        },
                      ),
                    ),
                  ),
          
                InkWell(
                  onTap: () {
                    setState(() {
                      lang = !lang;
                      icon2 = lang ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down;
                    });
                  },
                  child: Container(
                    width: width * 0.88,
                    height: height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Language", style: TextStyle(fontSize: height * 0.022, fontWeight: FontWeight.w600)),
                        Icon(icon2, size: 30),
                      ],
                    ),
                  ),
                ),
                if (lang)
                  Container(
                    height: height*0.15,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: language.length,
                      itemBuilder: (BuildContext context, index) {
                        return ListTile(
                          dense: true,
                          visualDensity: VisualDensity(vertical: -4),
                          // contentPadding: EdgeInsets.symmetric(vertical: 0),
                          title: Text(language[index],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          onTap: () {
                            print('Language: ${language[index]}');
                            setState(() {
                              lang = false;
                              icon2 = Icons.keyboard_arrow_down;
                            });
                          },
                        );
                      },
                    ),
                  ),
          
                SizedBox(
                  height: height*0.02,
                ),
          
                Text("About",
                    style: TextStyle(fontSize: height*0.026)
                ),
          
                SizedBox(
                  height: height*0.02,
                ),
          
                InkWell(
                  onTap: (){
                    setState(() {
                      priv = !priv;
                      icon3 = priv ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down;
                    });
                  },
                  child: Container(
                    width: width * 0.88,
                    height: height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Privacy",
                            style: TextStyle(fontSize: height * 0.022,
                                fontWeight: FontWeight.w600)
                        ),
                        Icon(icon3, size: 30),
                      ],
                    ),
                  ),
                ),
                if(priv)
                  Container(
                    height: height*0.1,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                        itemCount: Privacy.length,
                        itemBuilder: (context,index) {
                      return ListTile(
                        dense: true,
                        visualDensity: VisualDensity(vertical: -4),
                        title: Text(Privacy[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                        onTap: () {
                          setState(() {
                            priv = !priv;
                            icon3 = Icons.keyboard_arrow_down;
                          });
                        },
                      );
                    }),
                  ),


                Container(
                  width: width * 0.88,
                  height: height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Storage", style: TextStyle(fontSize: height * 0.022, fontWeight: FontWeight.w600)),
                      Icon(Icons.keyboard_arrow_down, size: 30),
                    ],
                  ),
                ),

                InkWell(
                  onTap: () {
                    setState(() {
                      audi = !audi;
                      icon4 = audi? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down;
                    });
                  },
                  child: Container(
                    width: width * 0.88,
                    height: height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Audio Quality", style: TextStyle(fontSize: height * 0.022, fontWeight: FontWeight.w600)),
                        Icon(icon4, size: 30),
                      ],
                    ),
                  ),
                ),
                if(audi)
                  Container(
                    height: height*0.1,
                   child: ListView.builder(
                     padding: EdgeInsets.zero,
                       itemCount: audio.length,
                       itemBuilder: (context,index) {
                     return ListTile(
                       dense: true,
                       visualDensity: VisualDensity(vertical: -4),
                       title: Text(audio[index],
                         style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                       ),
                       onTap: () {
                         print("{$audio}");
                         setState(() {
                           audi = !audi;
                           icon4 = Icons.keyboard_arrow_down;
                         });
                       },
                     );
                   }),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}