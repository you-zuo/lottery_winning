import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';

Effect<registerState> buildEffect() {
  return combineEffects(<Object, Effect<registerState>>{
    registerAction.action: _onAction,
    registerAction.goBack: _goBack,
  });
}

void _onAction(Action action, Context<registerState> ctx) {}

//回到登录页面
void _goBack(Action action, Context<registerState> ctx) {
  Navigator.of(ctx.context).pop();
}
