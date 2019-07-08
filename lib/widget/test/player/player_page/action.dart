import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';

//TODO replace with your own action
enum PlayerAction { action,player }

class PlayerActionCreator {
  static Action onAction() {
    return const Action(PlayerAction.action);
  }
  static Action onPlayer(IjkMediaController controller,) {
    return Action(PlayerAction.player,payload: controller);
  }
}
