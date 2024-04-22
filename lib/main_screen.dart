import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page_one extends StatefulWidget {
  @override
  State<page_one> createState() => _page_oneState();
}

class _page_oneState extends State<page_one>with TickerProviderStateMixin {
  List<Map<String, dynamic>> recommendation = [
    {
      "img": AssetImage("assets/images/album.jpeg"),
      "name": "Friday party",
      "type": "Party mood!"
    },
    {
      "img": AssetImage("assets/images/album1.jpeg"),
      "name": "The 19s",
      "type": "old is gold!"
    },
    {
      "img": AssetImage("assets/images/album2.jpeg"),
      "name": "Weekend party",
      "type": "Holiday mood!"
    },
    {
      "img": AssetImage("assets/images/alnum3.jpeg"),
      "name": "Workout",
      "type": "Fresh mood!"
    },
  ];

  List<Map<String, dynamic>> latest = [
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
  ];

  List<Map<String, dynamic>> populor = [
    {
      "img": AssetImage("assets/images/album8.jpeg"),
      "name": "Friday party",
      "type": "Party mood!"
    },
    {
      "img": AssetImage("assets/images/album9.jpeg"),
      "name": "The 19s",
      "type": "old is gold!"
    },
    {
      "img": AssetImage("assets/images/album10.jpeg"),
      "name": "Weekend party",
      "type": "Holiday mood!"
    },
    {
      "img": AssetImage("assets/images/album11.jpeg"),
      "name": "Workout",
      "type": "Fresh mood!"
    },
  ];

  List<Map<String, dynamic>> hip_hop = [
    {
      "img": AssetImage("assets/images/album7.jpeg"),
      "name": "Friday party",
      "type": "Party mood!"
    },
    {
      "img": AssetImage("assets/images/album3.jpeg"),
      "name": "The 19s",
      "type": "old is gold!"
    },
    {
      "img": AssetImage("assets/images/album12.jpeg"),
      "name": "Weekend party",
      "type": "Holiday mood!"
    },
    {
      "img": AssetImage("assets/images/album8.jpeg"),
      "name": "Workout",
      "type": "Fresh mood!"
    },
  ];


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    TabController _tabController =
         TabController(length: 4, vsync: this);

    return Scaffold(
      body: Center(
        child: Container(
          width: width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hello, User",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: height * 0.03),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "What do you want to hear today?",
                  style: TextStyle(fontSize: height * 0.02),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  suffixIcon: Icon(Icons.mic),
                  contentPadding: EdgeInsets.symmetric(vertical: height * 0.01),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelColor: Colors.lightBlueAccent,
                    indicatorColor: Colors.lightBlueAccent,
                    unselectedLabelColor: Colors.grey,
                    controller: _tabController,
                    tabs: [
                      Tab(text: "Recommendation"),
                      Tab(text: "Latest"),
                      Tab(text: "Popular"),
                      Tab(text: "Hip-Hop"),
                    ],
                  ),
                )
              ),
              Container(
                width: width * 0.8,
                height: height * 0.24,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      itemCount: recommendation.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        AssetImage image = recommendation[index]['img'];
                        return Container(
                          height: height * 0.18,
                          width: width * 0.4,
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * 0.14,
                                width: width * 0.33,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(recommendation[index]['name'],style: TextStyle(fontWeight: FontWeight.w600,fontSize: height*0.015),),
                                      Text(recommendation[index]['type'],style: TextStyle(color: Colors.grey,fontSize: height*0.012),),
                                    ],
                                  ),
                                  IconButton(onPressed: (){

                                  }, icon: Icon(Icons.play_circle,color: Colors.lightBlueAccent,))
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: latest.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        AssetImage image = latest[index]['img'];
                        return Container(
                          height: height * 0.18,
                          width: width * 0.4,
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * 0.14,
                                width: width * 0.33,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(latest[index]['name'],style: TextStyle(fontWeight: FontWeight.w600,fontSize: height*0.015),),
                                      Text(latest[index]['type'],style: TextStyle(color: Colors.grey,fontSize: height*0.012),),
                                    ],
                                  ),
                                  IconButton(onPressed: (){

                                  }, icon: Icon(Icons.play_circle,color: Colors.lightBlueAccent,))
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: populor.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        AssetImage image = populor[index]['img'];
                        return Container(
                          height: height * 0.18,
                          width: width * 0.4,
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * 0.14,
                                width: width * 0.33,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(populor[index]['name'],style: TextStyle(fontWeight: FontWeight.w600,fontSize: height*0.015),),
                                      Text(populor[index]['type'],style: TextStyle(color: Colors.grey,fontSize: height*0.012),),
                                    ],
                                  ),
                                  IconButton(onPressed: (){

                                  }, icon: Icon(Icons.play_circle,color: Colors.lightBlueAccent,))
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: hip_hop.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        AssetImage image = hip_hop[index]['img'];
                        return Container(
                          height: height * 0.18,
                          width: width * 0.4,
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height * 0.14,
                                width: width * 0.33,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(hip_hop[index]['name'],style: TextStyle(fontWeight: FontWeight.w600,fontSize: height*0.015),),
                                      Text(hip_hop[index]['type'],style: TextStyle(color: Colors.grey,fontSize: height*0.012),),
                                    ],
                                  ),
                                  IconButton(onPressed: (){

                                  }, icon: Icon(Icons.play_circle,color: Colors.lightBlueAccent,))
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: height*0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recently Play",style: TextStyle(fontSize: height*0.022,fontWeight: FontWeight.w700),),
                  InkWell(onTap: (){

                  },child: Text("See all",style: TextStyle(fontWeight: FontWeight.w400,fontSize: height*0.017),)
                  )
                ],
              ),

              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15),
                    itemCount: populor.length,
                    itemBuilder: (context,index) {
                    AssetImage image = populor[index]['img'];
                  return Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade50,
                      borderRadius: BorderRadius.circular(8.0),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey.withOpacity(0.5),
                      //     spreadRadius: 2,
                      //     blurRadius: 5,
                      //     offset: Offset(0, 6),
                      //   ),
                      // ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              populor[index]['name'],
                              style: TextStyle(
                                fontSize: height*0.017,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Items: ${populor[index]['type']}',
                              style: TextStyle(fontSize: height*0.013,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
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
