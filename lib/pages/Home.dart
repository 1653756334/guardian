import 'package:flutter/material.dart';
import 'package:guardian/pages/Family.dart';
import 'package:guardian/pages/Life.dart';
import 'package:guardian/pages/Sports.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';
import 'package:guardian/widgets/ProjectAppBar.dart';

import 'User.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLogin = false;

  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 2;

  List<String> paths = [
    "assets/images/run_act.png",
    "assets/images/life.png",
    "assets/images/home.png",
    "assets/images/person.png"
  ];
  List<Widget> pages = [
    Sports(),
    Life(),
    Family(),
    User(),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      appBar: ProjectAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: GetColorFrom("#292b51"),
        unselectedItemColor: GetColorFrom("#9fb0ba"),
        backgroundColor: GetColorFrom("#eeeeee"),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          for (int i = 0; i < paths.length; i++) {
            if (i == index) {
              if (paths[i].contains("_act.png")) continue;
              setState(() {
                paths[i] = paths[i].replaceAll(".png", "_act.png");
              });
            } else {
              if (!paths[i].contains("_act.png")) continue;
              setState(() {
                paths[i] = paths[i].replaceAll("_act.png", ".png");
              });
            }
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(paths[0]),
            label: "运动",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(paths[1]),
            label: "生命",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(paths[2]),
            label: "家庭",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(paths[3]),
            label: "个人",
          ),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}
