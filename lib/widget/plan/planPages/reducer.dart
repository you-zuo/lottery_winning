import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PlanPagesState> buildReducer() {
  return asReducer(
    <Object, Reducer<PlanPagesState>>{
      PlanPagesAction.action: _onAction,
    },
  );
}

PlanPagesState _onAction(PlanPagesState state, Action action) {
  final PlanPagesState newState = state.clone();
  return newState;
}
