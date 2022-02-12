import 'package:flutter/material.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

class CirCleButton extends StatefulWidget {
  bool isLocal;
  String url;
  VoidCallback? userTap;

  CirCleButton({Key? key, this.isLocal = false, required this.url, this.userTap})
      : super(key: key);

  @override
  _CirCleButtonState createState() => _CirCleButtonState();
}

class _CirCleButtonState extends State<CirCleButton> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return InkWell(
      onTap: widget.userTap,
      child: Container(
        width: ScreenAdapter.width(48),
        height: ScreenAdapter.width(48),
        child: CircleAvatar(
          backgroundColor: Color(0xff396ba0),
          child: widget.isLocal
              ? Image.asset(
                  widget.url,
                )
              : Image.network(widget.url),
        ),
      ),
    );
  }
}
