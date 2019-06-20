import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PlanPagesState> buildEffect() {
  return combineEffects(<Object, Effect<PlanPagesState>>{
    PlanPagesAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PlanPagesState> ctx) {
}
