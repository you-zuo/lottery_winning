import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum registerAction { action,goBack }

class registerActionCreator {
  static Action onAction() {
    return const Action(registerAction.action);
  }
  static Action onGoBack() {
    return const Action(registerAction.goBack);
  }
}
