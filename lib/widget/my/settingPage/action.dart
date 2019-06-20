import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum settingAction { action }

class settingActionCreator {
  static Action onAction() {
    return const Action(settingAction.action);
  }
}
