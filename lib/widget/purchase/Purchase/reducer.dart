import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PurchaseState> buildReducer() {
  return asReducer(
    <Object, Reducer<PurchaseState>>{
      PurchaseAction.action: _onAction,
    },
  );
}

PurchaseState _onAction(PurchaseState state, Action action) {
  final PurchaseState newState = state.clone();
  return newState;
}
