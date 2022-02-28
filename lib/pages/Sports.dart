import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';
import 'package:guardian/widgets/SportsItem.dart';

class Sports extends StatefulWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.only(
          top: ScreenAdapter.height(14),
          left: ScreenAdapter.width(25),
          right: ScreenAdapter.width(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "云波守护科技",
            style: TextStyle(
              fontSize: ScreenAdapter.width(20),
              color: GetColorFrom("#171a3d"),
            ),
          ),
          Divider(),
          Text(
            "我的状态",
            style: TextStyle(
              fontSize: ScreenAdapter.width(15),
              color: GetColorFrom("#171a3d"),
              fontWeight: FontWeight.w300,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: ScreenAdapter.width(15)),
            margin: EdgeInsets.only(top: ScreenAdapter.height(8)),
            decoration: BoxDecoration(
              color: GetColorFrom("#fbfbfb"),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            // 首页界面
            child: Column(
              children: [
                SportsItem(imgUrl: "assets/images/child.png",time:"12:12", title: "小孩跑动",),
                SportsItem(imgUrl: "assets/images/things.png",time:"12:12", title: "物品掉落",),
                SportsItem(imgUrl: "assets/images/fall.png",time:"12:12", title: "人员跌倒",withDivider: false,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
