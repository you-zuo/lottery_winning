import 'package:fish_redux/fish_redux.dart';

class HomeDetailsState implements Cloneable<HomeDetailsState> {
  String  title;

  HomeDetailsState({this.title});

  @override
  HomeDetailsState clone() {
    return HomeDetailsState();
  }
}

HomeDetailsState initState(Map<String, dynamic> args) {
final HomeDetailsState state=HomeDetailsState();
    state.title = args["title"];
  return state;
}
