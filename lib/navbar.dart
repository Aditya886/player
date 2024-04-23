
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:player/fvrt.dart';
import 'package:player/main_screen.dart';
import 'package:player/profile.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int select = 0;

  void bottombar(int index) {
    setState(() {
      select = index;
    });
  }

  final List<Widget> pages = [

    page_one(),

    menu(),

    Center(
      child: Text(
        "Not played!",
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.red),
      ),
    ),
    Center(
      child: Text(
        "Nothing Download!",
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.red),
      ),
    ),

    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: pages[select],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: select,
            onTap: bottombar,
            selectedIconTheme: IconThemeData(
              color: Colors.lightBlueAccent,
            ),

            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.house,
                    // color: Colors.grey,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.heart
                      // ,color: Colors.grey
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.play,
                      // color: Colors.grey
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download,
                      // color: Colors.grey
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle,
                      // color: Colors.grey
                  ),
                  label: ""),
            ])
    );
  }
}
