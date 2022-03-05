import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

const defaultTitleColor = Color(0xff171a3d);

class BaseItem extends StatefulWidget {
  BaseItem({Key? key, required this.title, this.titleColor = defaultTitleColor, this.actionIcon, this.onTap}) : super(key: key);
  String title;
  Color titleColor;
  Widget? actionIcon;
  VoidCallback? onTap;

  @override
  _BaseItemState createState() => _BaseItemState();
}

class _BaseItemState extends State<BaseItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: ScreenAdapter.width(45),
        padding: EdgeInsets.all(ScreenAdapter.width(15)),
        margin: EdgeInsets.only(top: ScreenAdapter.width(15)),
        decoration: BoxDecoration(
            color: GetColorFrom("#f7f7f7"),
            borderRadius: BorderRadius.all(Radius.circular(ScreenAdapter.width(8)))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title, style: TextStyle(
                fontSize: ScreenAdapter.width(16),
                color: widget.titleColor
            ),),
            if (widget.actionIcon != null) widget.actionIcon!,
          ],
        ),
      ),
    );
  }
}
