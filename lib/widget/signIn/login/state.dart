import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class loginState implements Cloneable<loginState> {

  TextEditingController textEditingController;

  //密码控制器
  TextEditingController textEditingControllers;

  BuildContext context;
  @override
  loginState clone() {
    return loginState()
      ..textEditingController = textEditingController
      ..textEditingControllers = textEditingControllers;
  }
}

loginState initState(Map<String, dynamic> args) {

//  初始化暂时有问题
//  ShareSDKRegister register = ShareSDKRegister();
//  register.setupQQ("1109369414", "Nyul5wFILsIzEzLI");
//  ShareSDK.regist(register);
//  ShareSDK.listenNativeEvent();

  return loginState()
    ..textEditingController = new TextEditingController()
    ..textEditingControllers = new TextEditingController();
}
