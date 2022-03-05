import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';
import 'package:guardian/widgets/SettingItem.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    String check = "10";
    ScreenAdapter.init(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          /// 头像部分
          Container(
            width: double.infinity,
            height: ScreenAdapter.width(212),
            color: GetColorFrom("#ffffff"),
            margin: EdgeInsets.only(bottom: ScreenAdapter.height(10)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: ScreenAdapter.width(30), bottom: ScreenAdapter.width(14)),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "http://pic.616pic.com/ys_bnew_img/00/03/69/iKescPiX6r.jpg"),
                    radius: ScreenAdapter.width(47),
                  ),
                ),
                Text("小云波", style: TextStyle(
                  fontSize: ScreenAdapter.width(18),
                  color: GetColorFrom("#171a3d")
                ),),
                SizedBox(height: ScreenAdapter.height(9),),
                Text("ID:8998990", style: TextStyle(
                  fontSize: ScreenAdapter.width(16),
                  color: GetColorFrom("#8c9198"),
                ),),
              ],
            ),
          ),
          SettingItem(title:"夜间模式", withIcon: true,),
          SettingItem(title: "字体大小", detail: "字体大小只对详情页有效", withUnderLine: false,),
          SizedBox(height: ScreenAdapter.height(15),),
          SettingItem(title: "清除缓存",detail: "当前缓存${check}MB",),
          SettingItem(title: "随时一览", detail: "再通知栏直接查看最新内容", withIcon: true,),
          SettingItem(title: "推送", detail: "通知栏提醒", withIcon: true, withUnderLine: false,),
          SizedBox(height: ScreenAdapter.height(15),),
          SettingItem(title: "反馈"),
          SettingItem(title: "关于我们", withUnderLine: false,)
        ],
      ),
    );
  }
}
