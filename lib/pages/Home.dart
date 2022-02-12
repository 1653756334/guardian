import 'package:flutter/material.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

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
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // if (!isLogin) {
    //   print("尚未登录");
    //   Navigator.pushNamed(context, '/login');
    // }
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
