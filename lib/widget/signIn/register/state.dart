import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class registerState implements Cloneable<registerState> {
  //账号控制器
  TextEditingController userNameController;

  //密码控制器
  TextEditingController passWordController;

  //重复密码控制器
  TextEditingController passWordControllers;

  //手机号码控制器
  TextEditingController phoneController;

  //邮箱控制器
  TextEditingController emailController;

  //qq控制器
  TextEditingController qqController;

  bool obscureText;
  bool obscureTexts;

  @override
  registerState clone() {
    return registerState()
      ..userNameController = userNameController
      ..passWordController = passWordController
      ..passWordControllers = passWordControllers
      ..phoneController = phoneController
      ..emailController = emailController
      ..qqController = qqController
      ..obscureText = obscureText
      ..obscureTexts = obscureTexts;
  }
}

registerState initState(Map<String, dynamic> args) {
  return registerState()
    ..userNameController = TextEditingController()
    ..passWordController = TextEditingController()
    ..passWordControllers = TextEditingController()
    ..phoneController = TextEditingController()
    ..emailController = TextEditingController()
    ..qqController = TextEditingController()
    ..obscureText = true
    ..obscureTexts = true;
}
