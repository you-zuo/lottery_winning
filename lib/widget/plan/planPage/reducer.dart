import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PlanPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<PlanPageState>>{
      PlanPageAction.action: _onAction,
    },
  );
}

PlanPageState _onAction(PlanPageState state, Action action) {
  final PlanPageState newState = state.clone();
  return newState;
}
