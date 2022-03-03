import 'package:flutter/material.dart';
import 'package:guardian/utils/GetColor.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

class MessageItem extends StatefulWidget {
  String name;
  String message;
  String time;
  String imgUrl;
  bool withIcon;
  VoidCallback? onTap;
  MessageItem({Key? key, required this.name, required this.message, required this.time, required this.imgUrl, required this.withIcon,this.onTap}) : super(key: key);

  @override
  _MessageItemState createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: ScreenAdapter.width(87),
        padding: EdgeInsets.only(left: ScreenAdapter.width(15),),
        color: GetColorFrom("#f9f9f9"),
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: ScreenAdapter.width(36),
                    backgroundImage: NetworkImage(
                      widget.imgUrl,
                    ),
                  ),
                  SizedBox(
                    width: ScreenAdapter.width(15),
                  ),
                  // 详细信息
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            fontSize: ScreenAdapter.width(17),
                            color: GetColorFrom("#3d444d")),
                      ),
                      Text(
                        widget.message,
                        style: TextStyle(
                            fontSize: ScreenAdapter.width(14),
                            color: GetColorFrom("#8c9198")),
                      ),
                      Text(
                        widget.time,
                        style: TextStyle(color: GetColorFrom("#bdc4ce")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  widget.withIcon ? Image.asset("assets/images/single.png") : Text(""),
                  Icon(Icons.arrow_forward_ios_outlined,
                    color: GetColorFrom("#8c9198"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
