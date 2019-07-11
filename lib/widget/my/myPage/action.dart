import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum myAction {onSetting,onPersonalData,onMsg}

class myActionCreator {

  static Action onSetting() {
    return const Action(myAction.onSetting);
  }
  static Action onPersonalData() {
    return const Action(myAction.onPersonalData);
  }
  static Action onMsg() {
    return const Action(myAction.onMsg);
  }
}
