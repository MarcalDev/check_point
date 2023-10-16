import 'package:firebase_auth/firebase_auth.dart';

class AppInfo {
  static User? actualUser;

  static final AppInfo _instance = AppInfo._internal();

  factory AppInfo() {
    return _instance;
  }

  AppInfo._internal();
}
