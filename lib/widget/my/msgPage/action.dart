import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum msgAction { action }

class msgActionCreator {
  static Action onAction() {
    return const Action(msgAction.action);
  }
}
