import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//通用dialog
class BaseDialog {
  BuildContext context;

  //dialog title消息
  String title;

  //右边按钮颜色
  Color color;

  BaseDialog(this.context, this.title, {this.color});

  dialog() {
    if (Platform.isIOS) {
      //ios相关代码
      showCupertinoDialog(
        context: context,
        builder: (BuildContext buildContext) {
          return CupertinoAlertDialog(
            content: Text(title),
            actions: <Widget>[
              CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    '取消',
                    style: TextStyle(color: Colors.blue),
                  )),
              CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    '确认',
                    style:
                        TextStyle(color: color == null ? Colors.blue : color),
                  )),
            ],
          );
        },
      );
    } else if (Platform.isAndroid) {
      //android相关代码
      showDialog(
        context: context,
        builder: (BuildContext buildContext) {
          return AlertDialog(
            content: Text(title),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  '取消',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  '确认',
                  style: TextStyle(color: color == null ? Colors.blue : color),
                ),
              ),
            ],
          );
        },
      );
    }
  }
}
