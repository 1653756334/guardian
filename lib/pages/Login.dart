import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guardian/utils/ScreenAdapter.dart';
import 'package:guardian/widgets/CircleButton.dart';
import 'package:guardian/widgets/InputWidgt.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Container(
          transform: Matrix4.translationValues(ScreenAdapter.width(-40), 0, 0),
          child: const Text(
            "登录",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: Text(""),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(
          left: ScreenAdapter.width(25),
          right: ScreenAdapter.width(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 云波守护 四个大字
            Container(
              margin: EdgeInsets.only(
                top: ScreenAdapter.height(20),
                bottom: ScreenAdapter.height(10),
              ),
              child: const Center(
                child: Text(
                  "云波守护",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            /// 账号
            InputWidget(
              hintText: "邮箱/手机号",
            ),
            /// 密码
            InputWidget(
              hintText: "密码",
              isProtected: true,
            ),
            /// 登录按钮
            Container(
              height: ScreenAdapter.height(45),
              margin: EdgeInsets.only(
                top: ScreenAdapter.height(30),
                bottom: ScreenAdapter.height(20),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff141736))),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                child: Center(
                  child: Text(
                    "登录",
                    style: TextStyle(
                      color: Color(0xfff9f9f9),
                      fontSize: ScreenAdapter.height(17),
                    ),
                  ),
                ),
              ),
            ),
            /// 忘记密码和注册按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text(
                    "忘记密码?",
                    style: TextStyle(
                      color: Color(0xffbdc4ce),
                      fontSize: ScreenAdapter.width(14),
                    ),
                  ),
                ),
                InkWell(
                    child: Text(
                  "手机注册",
                  style: TextStyle(
                    fontSize: ScreenAdapter.width(14),
                  ),
                ))
              ],
            ),
            /// 第三方方式登录
            Container(
              margin: EdgeInsets.only(top: ScreenAdapter.height(60)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 第三方方式登录文本
                  Text(
                    "第三方账号登陆",
                    style: TextStyle(
                      color: Color(0xff8c9198),
                      fontSize: ScreenAdapter.width(14),
                    ),
                  ),
                  // 四个可以点击的图标
                  Container(
                    margin: EdgeInsets.only(top: ScreenAdapter.height(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CirCleButton(url: "assets/images/qq.png", isLocal: true,),
                        CirCleButton(url: "assets/images/wechat.png", isLocal: true),
                        CirCleButton(url: "assets/images/weibo.png", isLocal: true),
                        CirCleButton(url: "assets/images/alipay.png", isLocal: true),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
