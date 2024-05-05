import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player/play.dart';

class fvrt extends StatefulWidget {
  @override
  State<fvrt> createState() => _fvrtState();
}

class _fvrtState extends State<fvrt> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    List<Map<String, dynamic>> deatils = [
      {"name": "Dailamo Dailamo", "subtitle": "Vijay Annoty"},
      {"name": "Saara Kaatrae", "subtitle": "S.P. Balasubra"},
      {"name": "Marundhaani", "subtitle": "Nakesh Aziz, Anthony Daasan"},
      {"name": "Oru Devadhai", "subtitle": "Roopkumar Rathod"},
      {"name": "Marun", "subtitle": "Sangeetha Rajeshwaran"},
    ];
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width*0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        print('object');
                        setState(() {
                          _isFavorite = !_isFavorite;
                        });
                      },
                      icon: Icon(
                        _isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_rounded,
                        color: _isFavorite
                            ? Colors.red
                            : Colors.black87,
                        size: height*0.042,
                      )
                  ),
                  InkWell(
                    onTap: () {
                      // Navigate to the fourth item in the bottom navigation bar
                      Navigator.pop(context); // Close the SecondPage
                      final BottomNavigationBar? navigationBar =
                      context.findAncestorWidgetOfExactType() as BottomNavigationBar?;
                      if (navigationBar != null) {
                        navigationBar.onTap!(2); // Navigate to the fourth item (index 3)
                      }
                      },
                    child: CircleAvatar(
                      radius: height * 0.1,
                      backgroundImage: AssetImage("assets/images/album1.jpeg"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.ellipsisVertical,size: height*0.03,))
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.6,
                child: ListView.builder(
                    itemCount: deatils.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      deatils[index]["name"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      deatils[index]["subtitle"],
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ]),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.play_circle,
                                  color: Colors.lightBlueAccent,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
