import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<adapterState> buildEffect() {
  return combineEffects(<Object, Effect<adapterState>>{
    adapterAction.action: _onAction,
  });
}

void _onAction(Action action, Context<adapterState> ctx) {
}
