import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/utils/printUtil.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeDetailsState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeDetailsState>>{
      RouteAction.route: _onRoute,
    },
  );
}

HomeDetailsState _onAction(HomeDetailsState state, Action action) {
  final HomeDetailsState newState = state.clone();
  return newState;
}
HomeDetailsState _onRoute(HomeDetailsState state, Action action) {
  final HomeDetailsState newState = state.clone();

  newState.title = action.payload['title'];
  return newState;
}
