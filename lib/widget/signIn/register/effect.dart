import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/utils/printUtil.dart';
import 'action.dart';
import 'state.dart';
import 'package:lottery_winning/export.dart';

Effect<registerState> buildEffect() {
  return combineEffects(<Object, Effect<registerState>>{
    registerAction.action: _onAction,
    registerAction.goBack: _goBack,
  });
}

void _onAction(Action action, Context<registerState> ctx) {
  var value = action.payload;
  //空判断
  if (value["userName"].length == 0) {
    BaseToast("请输入用户名").tost();
  } else if (value["passWord"].length == 0) {
    BaseToast("请输入密码").tost();
  } else if (value["passWords"].length == 0) {
    BaseToast("请再输入密码").tost();
  } else if (value["passWord"] != value["passWords"]) {
    BaseToast("两次输入的密码不同，请重新输入！").tost();
  } else if (value["phone"].length == 0) {
    BaseToast("请输入电话号码").tost();
  } else if (value["phone"].length != 11) {
    BaseToast("请输入正确的电话号码").tost();
  } else if (value["email"].length == 0) {
    BaseToast("请输入邮箱").tost();
  } else if (value["qq"].length == 0) {
    BaseToast("请输入QQ").tost();
  } else {
    printUtil.print(value);
  }
}

//回到登录页面
void _goBack(Action action, Context<registerState> ctx) {
  Navigator.of(ctx.context).pop();
}
