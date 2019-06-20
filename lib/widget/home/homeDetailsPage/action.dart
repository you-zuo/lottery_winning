import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeDetailsAction { fetch}

class HomeDetailsActionCreator {
  static Action fetch(String title) {
    return Action(
      HomeDetailsAction.fetch,
      payload: title,
    );
  }
}
