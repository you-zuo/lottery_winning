import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class LoginProviderMode with ChangeNotifier {
  //跳转注册
  void onTapRegister(context) {
    Navigator.pushNamed(context, "/registerPage");
  }

  //登录
  void onTapLogin(context, String phone, String passWord) {
    if (phone.length != null && passWord.length != null) {
      printUtil.print("phone${phone},passWord${passWord}");
      Navigator.pushNamedAndRemoveUntil(
          context, "/screenPage", (routes) => false);
    }
  }
}
