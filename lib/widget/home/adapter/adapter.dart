import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';

class adapterAdapter extends DynamicFlowAdapter<adapterState> {
  adapterAdapter()
      : super(
          pool: <String, Component<Object>>{
          },
          connector: _adapterConnector(),
          reducer: buildReducer(),
        );
}

class _adapterConnector extends ConnOp<adapterState, List<ItemBean>> {
  @override
  List<ItemBean> get(adapterState state) {
    return <ItemBean>[];
  }

  @override
  void set(adapterState state, List<ItemBean> items) {
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
