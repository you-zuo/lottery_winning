import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeDetailsAction { fetch,onAction}

class HomeDetailsActionCreator {
  static Action fetch() {
    return Action(
      HomeDetailsAction.fetch,);
  }
  static Action _onAction() {
    return Action(
      HomeDetailsAction.onAction
    );
  }
}
