import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<registerState> buildReducer() {
  return asReducer(
    <Object, Reducer<registerState>>{
      registerAction.action: _onAction,
    },
  );
}

registerState _onAction(registerState state, Action action) {
  final registerState newState = state.clone();
  return newState;
}


