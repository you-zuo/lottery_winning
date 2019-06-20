import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<msgState> buildEffect() {
  return combineEffects(<Object, Effect<msgState>>{
    msgAction.action: _onAction,
  });
}

void _onAction(Action action, Context<msgState> ctx) {
}
