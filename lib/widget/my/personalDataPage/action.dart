import 'package:fish_redux/fish_redux.dart';
import 'package:lottery_winning/utils/printUtil.dart';

//TODO replace with your own action
enum personalDataAction { action, onLogOut, onImage, HeadPortrait }

class personalDataActionCreator {
  static Action onAction(image) {
    return Action(personalDataAction.action,payload: image);
  }

  static Action onLogOut() {
    return const Action(personalDataAction.onLogOut);
  }

  static Action onImage() {
    return const Action(personalDataAction.onImage);
  }
}
