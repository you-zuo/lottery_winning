import 'package:flutter/material.dart';
import 'package:lottery_winning/export.dart';

//双色球
class DoubleBall {
  String text;
  Color color;

  DoubleBall(this.text, this.color);

  //双色球
  doubleBall() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(color: color, width: 1)),
      child: Center(
        child: Text(text, style: Appstyle.iconBlackText),
      ),
    );
  }
}

//圆角矩形数字
class RoundedRectangle {
  String text;
  Color color;

  RoundedRectangle(this.text, this.color);

  roundedRectangle() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
          color: color),
      child: Center(
        child: Text(text, style: Appstyle.iconText),
      ),
    );
  }
}

//角标
class CornerLabel {
  Widget _widget;
  String text;

  CornerLabel(this._widget, this.text);

  //右上角角标
  cornerLabelR() {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        _widget,
        Positioned(
          top: -10,
          right: -10,
          child: Text(text),
        ),
      ],
    );
  }

  //右下角角标
  cornerLabelL() {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        _widget,
        Positioned(
          bottom: -7,
          right: -7,
          child: Text(text),
        ),
      ],
    );
  }
}
