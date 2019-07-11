import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "网络请求错误",
          style: Appstyle.gray14,
        ),
      ),
    );
  }
}
