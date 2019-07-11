import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseAppBarNolife(
        "设置",
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil.getInstance().setWidth(40)),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.getInstance().setWidth(30)),
                decoration: BoxDecoration(
                  border: Border(
                    bottom:
                    BorderSide(color: Color(AppColors.viewGray), width: 2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "关于我们",
                      style: Appstyle.BlackGrey14,
                    ),
                    Image.asset("assets/images/r.png")
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom:
                    BorderSide(color: Color(AppColors.viewGray), width: 2),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.getInstance().setWidth(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "使用条款和隐私政策",
                      style: Appstyle.BlackGrey14,
                    ),
                    Image.asset("assets/images/r.png")
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom:
                    BorderSide(color: Color(AppColors.viewGray), width: 2),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil.getInstance().setWidth(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "清理缓存",
                      style: Appstyle.BlackGrey14,
                    ),
                    Image.asset("assets/images/r.png")
                  ],
                ),
              ),
            ],
          ),
        ),);
  }
}