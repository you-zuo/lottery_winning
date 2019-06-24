import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//通用dialog
class BaseDialog {
  BuildContext context;
  String title;
  BaseDialog(this.context,this.title);
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
                style: TextStyle(color: Colors.red),
              )),
        ],
      );
    },
  );
  }
}
