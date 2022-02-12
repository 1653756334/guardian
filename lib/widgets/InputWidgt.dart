import 'package:flutter/material.dart';
import 'package:guardian/utils/ScreenAdapter.dart';

class InputWidget extends StatefulWidget {
  bool? isProtected;
  String? hintText = "";

  InputWidget({Key? key, this.isProtected, this.hintText}) : super(key: key);

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: ScreenAdapter.height(20),),
      padding: EdgeInsets.only(left: ScreenAdapter.width(17),),
      height: ScreenAdapter.width(45),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(238, 238, 238, 1),
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),

      child: Center(
        child: TextField(
          cursorWidth: 0.8,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide.none
            ),
            hintText: widget.hintText,
            isCollapsed: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          ),
          style: TextStyle(
            fontSize: ScreenAdapter.height(14),
          ),
          obscureText: widget.isProtected ?? false,
        ),
      )
    );
  }
}
