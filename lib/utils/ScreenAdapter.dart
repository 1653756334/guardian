import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 适应不同的屏幕尺寸
class ScreenAdapter {
  static init(context) {
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      designSize: const Size(375, 667),
      context: context,
      minTextAdapt: true,
      orientation: Orientation.portrait,
    );
  }
  static width(w) => ScreenUtil().setWidth(w);
  static height(h) => ScreenUtil().setHeight(h);
  static screenWidth() => ScreenUtil().screenWidth;
  static screenHeight() => ScreenUtil().screenHeight;
  static scaleWidth() => ScreenUtil().scaleWidth;
  static scaleHeight() => ScreenUtil().scaleHeight;
}
