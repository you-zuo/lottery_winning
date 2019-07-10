import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class RegisterProviderMode with ChangeNotifier {
  void onTapRegister(context, String name, String passWord, String passWords,
      String phone, String email, String QQ) {
    //空判断
    if (name.length == 0) {
      BaseToast("请输入用户名").tost();
    } else if (passWord.length == 0) {
      BaseToast("请输入密码").tost();
    } else if (passWords.length == 0) {
      BaseToast("请再输入密码").tost();
    } else if (passWord != passWords) {
      BaseToast("两次输入的密码不同，请重新输入！").tost();
    } else if (phone.length == 0) {
      BaseToast("请输入电话号码").tost();
    } else if (phone.length != 11) {
      BaseToast("请输入正确的电话号码").tost();
    } else if (email.length == 0) {
      BaseToast("请输入邮箱").tost();
    } else if (QQ.length == 0) {
      BaseToast("请输入QQ").tost();
    } else {
      printUtil
          .print("name${name} password${passWord} passwords${passWords} phone${phone} email${email} QQ${QQ}");
          }
      }
}
