import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//通用dialog
class BaseDialog {
  BuildContext context;
  //dialog title消息
  String title;
  //右边按钮颜色
  Color color;
  BaseDialog(this.context,this.title,{this.color});
  dialog(){
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
                style: TextStyle(color: color==null?Colors.blue:color),
              )),
        ],
      );
    },
  );
  }
}
