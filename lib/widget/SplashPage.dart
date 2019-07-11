import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashActivity extends StatefulWidget {
  @override
  _SplashActivityState createState() => _SplashActivityState();
}

class _SplashActivityState extends State<SplashActivity> {
  Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer =  Timer(const Duration(milliseconds: 1500), () {
      try {
        Navigator.pushNamedAndRemoveUntil(
            context, "/loginPage", (routes) => false);
      } catch (e) {}
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: false)
          ..init(context);
    return Container(
      color: Colors.white,
    );
  }
}
