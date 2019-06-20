import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PurchaseState> buildEffect() {
  return combineEffects(<Object, Effect<PurchaseState>>{
    PurchaseAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PurchaseState> ctx) {
}
