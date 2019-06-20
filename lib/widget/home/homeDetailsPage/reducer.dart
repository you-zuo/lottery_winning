import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/utils/printUtil.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeDetailsState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeDetailsState>>{

    },
  );
}

HomeDetailsState _onAction(HomeDetailsState state, Action action) {
  final HomeDetailsState newState = state.clone();
  return newState;
}
