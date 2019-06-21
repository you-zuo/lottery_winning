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
  PrintUtil.print(action.payload);
  //BaseToast(action.payload.toString()).tost();
  Fluttertoast.showToast(
      msg: "aaa",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

//回到登录页面
void _goBack(Action action, Context<registerState> ctx) {
  Navigator.of(ctx.context).pop();
}
