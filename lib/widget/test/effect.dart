import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/home_bean_entity.dart';
import 'action.dart';
import 'state.dart';
import 'package:lottery_winning/export.dart';
import 'package:flutter/material.dart';

//Effect用来处理来自视图的意图，如点击事件，发起异步请求，这些有副作用的操作（网络请求）。

Effect<testState> buildEffect() {
  return combineEffects(<Object, Effect<testState>>{
    Lifecycle.initState: _onAction,
    testAction.tap: _tap
  });
}

void _onAction(Action action, Context<testState> ctx) {
  HttpUtils.getHttp(
    url: "http://h.playdota.cc/api/Topic/get_topic_list",
    onCallBack: (v) {
      PrintUtil.print(v);
      List<HomeBeanDataData> data = HomeBeanEntity.fromJson(
        jsonDecode(v),
      ).data.data;
      ctx.dispatch(testActionCreator.updateAction(data));
    },
  );
}

void _tap(Action action, Context<testState> ctx) {
  Navigator.pushNamedAndRemoveUntil(
      ctx.context, "/screenPage", (routes) => false);
}
