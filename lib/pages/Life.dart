import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';
import 'package:guardian/widgets/BaseItem.dart';

class Life extends StatefulWidget {
  const Life({Key? key}) : super(key: key);

  @override
  _LifeState createState() => _LifeState();
}

class _LifeState extends State<Life> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: GetColorFrom("#ffffff"),
      child: ListView(
        padding: EdgeInsets.only(
          left: ScreenAdapter.width(15),
          right: ScreenAdapter.width(15),
        ),
        children: [
          Container(
            width: double.infinity,
            height: ScreenAdapter.width(203),
            decoration: BoxDecoration(
                color: GetColorFrom("#f1eff0"),
                borderRadius:
                    BorderRadius.all(Radius.circular(ScreenAdapter.width(8)))),
            child: Center(
              child: Text("数据可视化暂时没做"),
            ),
          ),
          BaseItem(
            title: "睡眠质量",
            actionIcon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: ScreenAdapter.width(18),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/sleep');
            },
          ),
          BaseItem(
            title: "潜在疾病检测",
            actionIcon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: ScreenAdapter.width(18),
            ),
          ),
        ],
      ),
    );
  }
}
