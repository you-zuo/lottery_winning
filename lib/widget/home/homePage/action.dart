import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAction { action, onHomeDetailsPage }

class HomeActionCreator {
  static Action onAction() {
    return const Action(HomeAction.action);
  }

  static Action onHomeDetailsPage(String item) {
    Map<String, dynamic> payload = {"title": item};
    return  Action(HomeAction.onHomeDetailsPage,payload: payload);
  }
}
