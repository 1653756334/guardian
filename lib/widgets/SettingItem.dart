import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

import 'SettingCheck.dart';

class SettingItem extends StatefulWidget {
  String? detail;
  String title;
  bool withIcon;
  bool checkDefaultState;
  bool withUnderLine;

  SettingItem(
      {Key? key,
      required this.title,
      this.detail,
      this.withIcon = false,
      this.checkDefaultState = false,
      this.withUnderLine = true})
      : super(key: key);

  @override
  _SettingItemState createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenAdapter.width(75),
      padding: EdgeInsets.only(
          left: ScreenAdapter.width(15), right: ScreenAdapter.width(15)),
      decoration: BoxDecoration(
        color: GetColorFrom("#ffffff"),
        border: widget.withUnderLine
            ? Border(
                bottom: BorderSide(color: GetColorFrom("#eeeeee"), width: 1))
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: ScreenAdapter.width(16)),
              ),
              if (widget.detail != null)
                Text(
                  widget.detail ?? "",
                  style: TextStyle(
                      fontSize: ScreenAdapter.width(14),
                      color: GetColorFrom("#8c9198")),
                ),
            ],
          ),
          if (widget.withIcon)
            SettingCheck(
              checkOn: widget.checkDefaultState,
            ),
        ],
      ),
    );
  }
}
