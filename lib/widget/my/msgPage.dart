import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class MsgPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseAppBarNolife(S.of(context).msg, Container());
  }
}
