import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:lottery_winning/utils/printUtil.dart';
import 'action.dart';
import 'state.dart';

//Reducer是纯函数响应Action对Store数据进行改变。

Reducer<testState> buildReducer() {
  printUtil.print("action");

  return asReducer(
    <Object, Reducer<testState>>{
      testAction.action: _onAction,
    },
  );
}

testState _onAction(testState state, Action action) {
  final testState newState = state.clone();

  newState.userList = action.payload;
  return newState;
}
