import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';

Effect<personalDataState> buildEffect() {
  return combineEffects(<Object, Effect<personalDataState>>{
    personalDataAction.action: _onAction,
    personalDataAction.onLogOut: _onLogOut,
  });
}

void _onAction(Action action, Context<personalDataState> ctx) {}
//退出登录
void _onLogOut(Action action, Context<personalDataState> ctx) {
  showCupertinoDialog(
    context: ctx.context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        content: Text('你确定要清除缓存吗？'),
        actions: <Widget>[
          CupertinoButton(
              onPressed: () {
                Navigator.of(ctx.context).pop();
              },
              child: Text(
                '取消',
                style: TextStyle(color: Colors.blue),
              )),
          CupertinoButton(
              onPressed: () {
                Navigator.of(ctx.context).pop();
              },
              child: Text(
                '确认',
                style: TextStyle(color: Colors.red),
              )),
        ],
      );
    },
  );
}
