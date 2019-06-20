import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/utils/printUtil.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeDetailsState> buildEffect() {
  return combineEffects(<Object, Effect<HomeDetailsState>>{
  Lifecycle.initState: _init,
  HomeDetailsAction.fetch:_fetch,
  });
}

void _init(Action action, Context<HomeDetailsState> ctx) {
  PrintUtil.print(action.payload);
  ctx.dispatch(HomeDetailsActionCreator.fetch(ctx.state.title));
}

void _fetch(Action action, Context<HomeDetailsState> ctx) {

}