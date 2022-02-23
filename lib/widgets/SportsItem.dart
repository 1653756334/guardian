import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

class SportsItem extends StatefulWidget {
  String imgUrl;
  String time;
  String title;
  VoidCallback? onTap;
  bool? withDivider;

  SportsItem(
      {Key? key, required this.imgUrl, required this.time, required this.title, this.onTap, this.withDivider=true})
      : super(key: key);

  @override
  _SportsItemState createState() => _SportsItemState();
}

class _SportsItemState extends State<SportsItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenAdapter.width(50),
      decoration: BoxDecoration(
        border:widget.withDivider! ? Border(bottom: BorderSide(color: GetColorFrom("#eeeeee"), width: 1)) : null,
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(widget.imgUrl),
                SizedBox(
                  width: ScreenAdapter.width(5),
                ),
                Text(
                  widget.title,
                  style: TextStyle(fontSize: ScreenAdapter.width(14)),
                ),
              ],
            ),
            Row(
              children: [
                Text(widget.time, style: TextStyle(
                  color: GetColorFrom("#396ba0")
                ),),
                SizedBox(
                  width: ScreenAdapter.width(5),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: ScreenAdapter.width(14),
                  color: GetColorFrom("#396ba0"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
