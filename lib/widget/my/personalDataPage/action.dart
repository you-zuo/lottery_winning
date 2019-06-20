import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum personalDataAction { action }

class personalDataActionCreator {
  static Action onAction() {
    return const Action(personalDataAction.action);
  }
}
