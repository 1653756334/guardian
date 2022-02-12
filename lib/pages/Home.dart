import 'package:flutter/material.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("主页面"),
      ),
      body: Container(
        child: Text("我是主页面"),
      ),
    );
  }
}
