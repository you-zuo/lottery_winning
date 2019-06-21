import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum adapterAction { action }

class adapterActionCreator {
  static Action onAction() {
    return const Action(adapterAction.action);
  }
}
