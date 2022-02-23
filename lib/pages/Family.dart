import 'package:flutter/material.dart';
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
      child: Container(child: Text("家庭"),)
    );
  }
}
