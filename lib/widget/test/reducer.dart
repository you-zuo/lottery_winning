import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

//Reducer是纯函数响应Action对Store数据进行改变。

Reducer<testState> buildReducer() {
  return asReducer(
    <Object, Reducer<testState>>{
      testAction.action: _onAction,
    },
  );
}

testState _onAction(testState state, Action action) {
  print("我是值更新的地方");
  final testState newState = state.clone();
  newState.userList = action.payload;
  return newState;
}

