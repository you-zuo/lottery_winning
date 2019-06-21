import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<adapterState> buildReducer() {
  return asReducer(
    <Object, Reducer<adapterState>>{
      adapterAction.action: _onAction,
    },
  );
}

adapterState _onAction(adapterState state, Action action) {
  final adapterState newState = state.clone();
  return newState;
}
