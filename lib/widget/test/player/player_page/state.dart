import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/export.dart';

class PlayerState implements Cloneable<PlayerState> {
  IjkMediaController controller = IjkMediaController();

  @override
  PlayerState clone() {
    return PlayerState()..controller = controller;
  }
}

PlayerState initState(Map<String, dynamic> args) {
  return PlayerState()..controller = IjkMediaController();
}

