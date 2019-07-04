import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

Effect<personalDataState> buildEffect() {
  return combineEffects(<Object, Effect<personalDataState>>{
    personalDataAction.onLogOut: _onLogOut,
    personalDataAction.onImage: _onImage,
  });
}

void _onAction(Action action, Context<personalDataState> ctx) {}
//退出登录
void _onLogOut(Action action, Context<personalDataState> ctx) {
  BaseDialog(ctx.context, "确定要退出登录吗？", color: Colors.red,tag: "logOut").dialog();
}

//上传头像
void _onImage(Action action, Context<personalDataState> ctx) {
  PickerImage().getImage(
    onCallBack: (v) {
      ctx.dispatch(personalDataActionCreator.onAction("assets/images/Dice2.png"));
    },
  );
}
