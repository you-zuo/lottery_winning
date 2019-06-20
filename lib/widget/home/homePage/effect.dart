import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/utils/printUtil.dart';
import 'package:lottery_winning/widget/home/homeDetailsPage/page.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.action: _onAction,
    HomeAction.onHomeDetailsPage: _onHomeDetailsPage,
  });
}

void _onAction(Action action, Context<HomeState> ctx) {}

void _onHomeDetailsPage(Action action, Context<HomeState> ctx) {
  Navigator.pushNamed(ctx.context, "/homeDetailsPage",
      arguments: {"title": action.payload.toString()});
}
