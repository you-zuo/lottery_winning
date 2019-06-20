import 'package:fish_redux/fish_redux.dart';

class PlanPagesState implements Cloneable<PlanPagesState> {

  @override
  PlanPagesState clone() {
    return PlanPagesState();
  }
}

PlanPagesState initState(Map<String, dynamic> args) {
  return PlanPagesState();
}
