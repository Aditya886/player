import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class play extends StatefulWidget {
  @override
  State<play> createState() => _playState();
}

class _playState extends State<play> {

  bool _isfavorate = false;
  bool play = false;
  bool shuffle = false;
  bool repeat = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Playing Now",
          style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: height * 0.42,
                // height: width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/alnum3.jpeg"),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              width: height*0.42,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sky with the Blue",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: width*0.048),
                      ),
                      Text("Bachelor, Kapil Kapilan",style: TextStyle(fontSize: width*0.03),),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isfavorate = !_isfavorate;
                      });
                    },
                    icon: Icon(
                      _isfavorate
                          ? Icons.favorite
                          : Icons.favorite_border_rounded,
                      color: _isfavorate
                          ?Colors.red
                          :Colors.black,
                      size: width*0.07,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Container(
              width: width*0.88,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0:30",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  IconButton(onPressed: () {
                    setState(() {
                      shuffle = !shuffle;
                    });
                  }, icon: Icon(Icons.shuffle,
                    color: shuffle
                        ?Colors.lightBlueAccent
                        :Colors.grey.shade500,
                  )),

                  IconButton(onPressed: () {
                    setState(() {
                      repeat = !repeat;
                    });
                  }, icon: Icon(
                    repeat ? Icons.repeat_one : Icons.repeat,
                    color: repeat ? Colors.lightBlueAccent : Colors.grey.shade500,
                  )),
                  Text("2:20", style: TextStyle(fontWeight: FontWeight.w500))
                ],
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0)
              ) ,
              child: Slider(
                  min: 0,
                  max: 100,
                  value: 50,
                  activeColor: Colors.lightBlueAccent,
                  onChanged: (value) {

                  }),
            ),
            Row(
              // mainAxisSize: MainAxisSize.values[1],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous,
                      size: 35,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        play = !play;
                      });
                    },
                    icon: Icon(
                      play
                          ?Icons.pause_circle
                          :Icons.play_circle,
                      size: height * 0.10,
                      color: Colors.lightBlueAccent,
                    )
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next,
                      size: 35,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
