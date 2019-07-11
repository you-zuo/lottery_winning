import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

//通用appbar
class BaseAppBar extends StatelessWidget {
  String titleText;
  Widget _widgetOne;
  Widget _widgetTwo;
  Widget bodyWidget;
  String lead;

  BaseAppBar(this.titleText, this._widgetOne, this._widgetTwo, this.bodyWidget,
      [this.lead]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: lead == null
            ? null
            : Image.asset(
                lead,
                width: ScreenUtil.getInstance().setWidth(87),
                height: ScreenUtil.getInstance().setWidth(35),
              ),
        title: Text(
          titleText,
          style: Appstyle.TitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[_widgetOne, _widgetTwo],
      ),
      body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(
              FocusNode(),
            );
          },
          child: bodyWidget),
    );
  }
}

class BaseAppBarNolife extends StatelessWidget {
  static int Userid;
  String titleText;
  Widget bodyWidget;
  String lead;

  BaseAppBarNolife(this.titleText, this.bodyWidget, [this.lead]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: lead == null
            ? null
            : Image.asset(
                lead,
              ),
        title: Text(
          titleText,
          style: Appstyle.TitleTextStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(
              FocusNode(),
            );
          },
          child: bodyWidget),
    );
  }
}
