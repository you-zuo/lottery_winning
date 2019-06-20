import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PurchaseAction { action }

class PurchaseActionCreator {
  static Action onAction() {
    return const Action(PurchaseAction.action);
  }
}
