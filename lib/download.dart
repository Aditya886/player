import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class download extends StatefulWidget {
  @override
  State<download> createState() => _downloadState();
}

class _downloadState extends State<download> {

  List<Map<String, dynamic>> data = [
    {
      "img": AssetImage("assets/images/album4.jpeg"),
      "name": "Friday party",
      "type": "Party mood!"
    },
    {
      "img": AssetImage("assets/images/album5.jpeg"),
      "name": "The 19s",
      "type": "old is gold!"
    },
    {
      "img": AssetImage("assets/images/album6.jpeg"),
      "name": "Weekend party",
      "type": "Holiday mood!"
    },
    {
      "img": AssetImage("assets/images/album7.jpeg"),
      "name": "Workout",
      "type": "Fresh mood!"
    },
    {
      "img": AssetImage("assets/images/album11.jpeg"),
      "name": "The 19s",
      "type": "old is gold!"
    },
    {
      "img": AssetImage("assets/images/album13.jpeg"),
      "name": "Weekend party",
      "type": "Holiday mood!"
    },
    {
      "img": AssetImage("assets/images/album1.jpeg"),
      "name": "Workout",
      "type": "Fresh mood!"
    },
  ];
  @override
  Widget build(BuildContext context) {

     var height = MediaQuery.sizeOf(context).height;
     var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Downloads",style: TextStyle(letterSpacing: 3,fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent.shade100,
        elevation: 8,
        shadowColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: height*0.02),
          width: width*0.95,
          child: ListView.builder(itemCount: data.length,itemBuilder: (context,index) {
            AssetImage image = data[index]["img"];
            return Container(
              margin: EdgeInsets.all(height*0.01),
              decoration: BoxDecoration(
                color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey,
                //     blurRadius: 5,
                //     spreadRadius: 2,
                //     offset: Offset(0,0)
                //   )
                // ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: width*0.17,
                      width: width*0.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: image,
                          fit: BoxFit.fill
                        )
                      ),
                  ),

                  Column(
                    children: [
                      Text(data[index]["name"],style: TextStyle(fontWeight: FontWeight.w600,fontSize: height*0.021),),
                      Text(data[index]["type"],style: TextStyle(color: Colors.grey,fontSize: height*0.015))
                    ],
                  ),
                  IconButton(onPressed: () {

                  }, icon: FaIcon(FontAwesomeIcons.ellipsisVertical))
                ],
              ),
            );
          }),
        ),
      ),
    );

  }
}