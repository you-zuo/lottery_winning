import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottery_winning/routers/Routes.dart';
import 'export.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.white),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate
        ],
        supportedLocales: S.delegate.supportedLocales,
        initialRoute: '/',
        onGenerateRoute: onGenerateRoute),
  );
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
