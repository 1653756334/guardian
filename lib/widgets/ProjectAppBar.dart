import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

class ProjectAppBar extends StatelessWidget with PreferredSizeWidget {
  const ProjectAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return AppBar(
      title: Text(
        "云波守护",
        style: TextStyle(
          color: GetColorFrom("#171a3d"),
          fontSize: ScreenAdapter.width(23),
          fontWeight: FontWeight.w300,
        ),
      ),
      centerTitle: true,
      backgroundColor: GetColorFrom("#ffffff"),
      shadowColor: Colors.transparent,
      leading: Container(
        transform: Matrix4.translationValues(ScreenAdapter.width(12), 0, 0),
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios, color: GetColorFrom("#396ba0"),size: ScreenAdapter.width(16),),
            Text("返回", style: TextStyle(
              color: GetColorFrom("#396ba0"),
              fontSize: ScreenAdapter.width(16),
            ),)
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
