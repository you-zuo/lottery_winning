import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PlanPagesPage extends Page<PlanPagesState, Map<String, dynamic>> {
  PlanPagesPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PlanPagesState>(
                adapter: null,
                slots: <String, Dependent<PlanPagesState>>{
                }),
            middleware: <Middleware<PlanPagesState>>[
            ],);

}
