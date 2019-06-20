import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<personalDataState> buildEffect() {
  return combineEffects(<Object, Effect<personalDataState>>{
    personalDataAction.action: _onAction,
  });
}

void _onAction(Action action, Context<personalDataState> ctx) {
}
