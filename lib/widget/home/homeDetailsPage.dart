import 'package:flutter/material.dart';

import '../../export.dart';

class HomeDetailsPage extends StatelessWidget {
  final arguments;

  HomeDetailsPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return BaseAppBarNolife(arguments["title"], Container());
  }
}
