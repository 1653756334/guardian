import 'package:flutter/material.dart';
import 'package:guardian/common/Global.dart';
import 'package:guardian/pages/Home.dart';
import '../pages/Login.dart';

final Map<String,Function> routes={
  '/': (context) => HomePage(),
  '/login': (context) => LoginPage(),
};

Route? onGenerateRoute (RouteSettings settings) {
  //String? 表示name为可空类型
  String? name = settings.name;
  //Function? 表示pageContentBuilder为可空类型
  final Function? pageContentBuilder = routes[name];
  print("routes[name]: ${name}");
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
}
