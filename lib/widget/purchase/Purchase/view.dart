import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(PurchaseState state, Dispatch dispatch, ViewService viewService) {
  return BaseAppBarNolife(S.of(viewService.context).InterfacePurchase, Container());
}
