import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<personalDataState> buildReducer() {
  return asReducer(
    <Object, Reducer<personalDataState>>{
      personalDataAction.action: _onAction,
    },
  );
}

personalDataState _onAction(personalDataState state, Action action) {
  final personalDataState newState = state.clone();
  return newState;
}
