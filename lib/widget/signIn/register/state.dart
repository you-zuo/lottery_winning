import 'package:fish_redux/fish_redux.dart';

class registerState implements Cloneable<registerState> {

  @override
  registerState clone() {
    return registerState();
  }
}

registerState initState(Map<String, dynamic> args) {
  return registerState();
}
