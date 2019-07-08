import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PlayerState> buildEffect() {
  return combineEffects(<Object, Effect<PlayerState>>{
    PlayerAction.action: _onAction,
    PlayerAction.player: _onPlayer,
  });
}

void _onAction(Action action, Context<PlayerState> ctx) {}

void _onPlayer(Action action, Context<PlayerState> ctx) {
  action.payload.setNetworkDataSource(
      'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',
      autoPlay: true);
  action.payload.play();
}
