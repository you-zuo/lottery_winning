import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottery_winning/export.dart';

//通用的toast
class BaseToast {

  String msg;
  BaseToast(this.msg);
  tost(){
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Color(AppColors.loginButton),
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
