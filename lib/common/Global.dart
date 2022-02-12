import 'package:shared_preferences/shared_preferences.dart';

class Global {
  static late SharedPreferences prefs;

  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }
}