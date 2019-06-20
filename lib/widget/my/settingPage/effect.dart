import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<settingState> buildEffect() {
  return combineEffects(<Object, Effect<settingState>>{
    settingAction.action: _onAction,
  });
}

void _onAction(Action action, Context<settingState> ctx) {
}
