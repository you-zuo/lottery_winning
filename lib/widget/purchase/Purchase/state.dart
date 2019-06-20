import 'package:fish_redux/fish_redux.dart';

class PurchaseState implements Cloneable<PurchaseState> {

  @override
  PurchaseState clone() {
    return PurchaseState();
  }
}

PurchaseState initState(Map<String, dynamic> args) {
  return PurchaseState();
}
