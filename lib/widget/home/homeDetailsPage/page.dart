import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomeDetailsPage extends Page<HomeDetailsState, Map<String, dynamic>> {
  HomeDetailsPage()
      : super(
    initState: initState,
    effect: buildEffect(),
    reducer: buildReducer(),
    view: buildView,
    dependencies: Dependencies<HomeDetailsState>(
        adapter: null, slots: <String, Dependent<HomeDetailsState>>{}),
    middleware: <Middleware<HomeDetailsState>>[],
  );
}