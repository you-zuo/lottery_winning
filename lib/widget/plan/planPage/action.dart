import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PlanPageAction { action,onPlanPages}

class PlanPageActionCreator {
  static Action onAction() {
    return const Action(PlanPageAction.action);
  }
  static Action onPlanPages() {
    return const Action(PlanPageAction.onPlanPages);
  }
}
