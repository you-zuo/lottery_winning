import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<msgState> buildReducer() {
  return asReducer(
    <Object, Reducer<msgState>>{
      msgAction.action: _onAction,
    },
  );
}

msgState _onAction(msgState state, Action action) {
  final msgState newState = state.clone();
  return newState;
}
