import 'package:fish_redux/fish_redux.dart';

class adapterState implements Cloneable<adapterState> {

  @override
  adapterState clone() {
    return adapterState();
  }
}

adapterState initState(Map<String, dynamic> args) {
  return adapterState();
}
