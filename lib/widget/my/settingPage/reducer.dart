import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<settingState> buildReducer() {
  return asReducer(
    <Object, Reducer<settingState>>{
      settingAction.action: _onAction,
    },
  );
}

settingState _onAction(settingState state, Action action) {
  final settingState newState = state.clone();
  return newState;
}
