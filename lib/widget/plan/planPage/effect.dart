import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<PlanPageState> buildEffect() {
  return combineEffects(<Object, Effect<PlanPageState>>{
    PlanPageAction.action: _onAction,
    PlanPageAction.onPlanPages: _onPlanPages,
  });
}

void _onAction(Action action, Context<PlanPageState> ctx) {}

//追号计划编辑
void _onPlanPages(Action action, Context<PlanPageState> ctx) {
  Navigator.pushNamed(ctx.context, "/planPages");
}
