import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottery_winning/routers/Routes.dart';
import 'export.dart';

void main() {
  setupLocator();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider.value(value: HomeProviderMode()),
      ChangeNotifierProvider.value(value: HomeDetailsProviderMode()),
      ChangeNotifierProvider.value(value: PlanProviderMode()),
      ChangeNotifierProvider.value(value: PlansProviderMode()),
      ChangeNotifierProvider.value(value: LoginProviderMode()),
      ChangeNotifierProvider.value(value: RegisterProviderMode()),
      ChangeNotifierProvider.value(value: MyProviderMode()),
      ChangeNotifierProvider.value(value: PersonalDataProviderMode()),
    ], child: MyApp()),
  );
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

//用于解决CupertinoDialog 国际化报错问题
class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.white, primarySwatch: Colors.red),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          FallbackCupertinoLocalisationsDelegate()
        ],
        navigatorKey: getIt<NavigateService>().key,
        routes: {'/errorPage': (_) => ErrorPage()},
        supportedLocales: S.delegate.supportedLocales,
        initialRoute: '/',
        onGenerateRoute: onGenerateRoute);
  }
}
