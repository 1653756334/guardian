import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';
import 'package:guardian/widgets/MessageItem.dart';

class Family extends StatefulWidget {
  const Family({Key? key}) : super(key: key);

  @override
  _FamilyState createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: GetColorFrom("#ffffff"),
        child: Container(
          child: ListView(
            padding: EdgeInsets.only(top: 10),
            children: [
              MessageItem(
                withIcon: true,
                name: "爸爸",
                message: "回家了",
                time: "12:09",
                imgUrl:
                    "https://img.iplaysoft.com/wp-content/uploads/2019/free-images/free_stock_photo.jpg!0x0.webp",
              ),
              MessageItem(
                withIcon: false,
                name: "妈妈",
                message: "回家了",
                time: "12:09",
                imgUrl:
                    "https://img.iplaysoft.com/wp-content/uploads/2019/free-images/free_stock_photo.jpg!0x0.webp",
              ),
            ],
          ),
        ));
  }
}
