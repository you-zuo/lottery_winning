import 'package:fish_redux/fish_redux.dart';

class msgState implements Cloneable<msgState> {

  @override
  msgState clone() {
    return msgState();
  }
}

msgState initState(Map<String, dynamic> args) {
  return msgState();
}
