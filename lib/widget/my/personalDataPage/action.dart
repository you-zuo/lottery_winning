import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum personalDataAction { action,onLogOut }

class personalDataActionCreator {
  static Action onAction() {
    return const Action(personalDataAction.action);
  }
static Action onLogOut() {
    return const Action(personalDataAction.onLogOut);
  }
}
