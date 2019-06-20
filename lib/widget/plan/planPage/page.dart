import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PlanPagePage extends Page<PlanPageState, Map<String, dynamic>> {
  PlanPagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PlanPageState>(
                adapter: null,
                slots: <String, Dependent<PlanPageState>>{
                }),
            middleware: <Middleware<PlanPageState>>[
            ],);

}
