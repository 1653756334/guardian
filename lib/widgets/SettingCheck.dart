import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

class SettingCheck extends StatefulWidget {
  bool checkOn;

  SettingCheck({Key? key, required this.checkOn}) : super(key: key);

  @override
  _SettingCheckState createState() => _SettingCheckState();
}

class _SettingCheckState extends State<SettingCheck> {
  late bool setOn;

  @override
  void initState() {
    super.initState();
    setOn = widget.checkOn;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          setOn = !setOn;
        });
      },
      child: Container(
        width: ScreenAdapter.width(36),
        height: ScreenAdapter.width(20),
        decoration: BoxDecoration(
            color: GetColorFrom("#eeeeee"),
            borderRadius:
                BorderRadius.all(Radius.circular(ScreenAdapter.width(10)))),
        child: Stack(
          children: [
            !setOn
                ? Positioned(
                    child: Container(
                      width: ScreenAdapter.width(20),
                      height: ScreenAdapter.width(20),
                      decoration: BoxDecoration(
                        color: GetColorFrom("#ffffff"),
                        borderRadius: BorderRadius.all(
                          Radius.circular(ScreenAdapter.width(10)),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(-0.8, 0.8),
                            blurRadius: 5, //阴影模糊程度
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  )
                : Positioned(
                    right: 0,
                    child: Container(
                      width: ScreenAdapter.width(20),
                      height: ScreenAdapter.width(20),
                      decoration: BoxDecoration(
                        color: GetColorFrom("#06121e"),
                        borderRadius: BorderRadius.all(
                            Radius.circular(ScreenAdapter.width(10))),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(-0.8, 0.8),
                            blurRadius: 5, //阴影模糊程度
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
