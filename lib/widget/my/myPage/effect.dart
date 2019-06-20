import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/material.dart';

Effect<myState> buildEffect() {
  return combineEffects(<Object, Effect<myState>>{
    myAction.action: _onAction,
    myAction.onSetting: _onSetting,
    myAction.onPersonalData: _onPersonalData,
    myAction.onMsg: _onMsg,
  });
}

void _onAction(Action action, Context<myState> ctx) {}

void _onSetting(Action action, Context<myState> ctx) {
  Navigator.pushNamed(ctx.context, '/settingPage');
}

void _onPersonalData(Action action, Context<myState> ctx) {
  Navigator.pushNamed(ctx.context, '/personalDataPage');
}

void _onMsg(Action action, Context<myState> ctx){
  Navigator.pushNamed(ctx.context, "/msgPage");
}