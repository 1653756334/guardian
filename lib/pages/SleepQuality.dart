import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';
import 'package:guardian/widgets/BaseItem.dart';
import 'package:guardian/widgets/ProjectAppBar.dart';

Map convertToChinese = {
  "Monday": "星期一",
  "Tuesday": "星期二",
  "Wednesday": "星期三",
  "Thursday": "星期四",
  "Friday": "星期五",
  "Saturday": "星期六",
  "Sunday": "星期日"
};

class SleepQualityPage extends StatefulWidget {
  const SleepQualityPage({Key? key}) : super(key: key);

  @override
  _SleepQualityPageState createState() => _SleepQualityPageState();
}

class _SleepQualityPageState extends State<SleepQualityPage> {
  DateTime _getUpTime = DateTime.fromMillisecondsSinceEpoch(1646475930593);
  DateTime _sleepTime = DateTime.fromMillisecondsSinceEpoch(1646453752000);

  List _starList = [4, 1];

  List<Widget> _getStarWidget() {
    List<Widget> list = [];
    int temp = _starList[0];
    while (temp-- > 0) {
      list.add(Image.asset("assets/images/star.png"));
    }
    temp = _starList[1];
    while(temp-- > 0) {
      list.add(Image.asset("assets/images/unstar.png"));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    /// 计算今天时间
    List nowDate =
        formatDate(DateTime.now(), [mm, '月', dd, '日-', DD]).split('-');
    nowDate[1] = convertToChinese[nowDate[1]];

    var sleepDur = _getUpTime.difference(_sleepTime).toString().split(':');
    var sleepTime = sleepDur[0] + "小时" + sleepDur[1] + "分钟";

    return Scaffold(
      appBar: ProjectAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: GetColorFrom("#ffffff")),
        child: ListView(
          padding: EdgeInsets.fromLTRB(
              ScreenAdapter.width(25), 0, ScreenAdapter.width(25), 0),
          children: [
            Text(
              "睡眠质量",
              style: TextStyle(
                fontSize: ScreenAdapter.width(22),
              ),
            ),
            Text(
              nowDate.join(),
              style: TextStyle(fontSize: ScreenAdapter.width(14)),
            ),
            Text(
              sleepTime,
              style: TextStyle(fontSize: ScreenAdapter.width(25)),
            ),
            Container(
              width: double.infinity,
              height: ScreenAdapter.width(218),
              margin: EdgeInsets.only(top: ScreenAdapter.width(10)),
              decoration: BoxDecoration(
                  color: GetColorFrom("#f9f9f9"),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text("可视化还没做"),
              ),
            ),
            BaseItem(
              title: "今日就绪状态",
              actionIcon: Row(
                children: _getStarWidget(),
              ),
            ),
            BaseItem(
              title: "睡眠质量",
              actionIcon: Text(
                "85%",
                style: TextStyle(
                    color: GetColorFrom("#396ba0"),
                    fontSize: ScreenAdapter.width(14)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
