import 'package:flutter/material.dart';

//Chip选择器
//提供tag基本类
abstract class BaseSelectEntity {
  String getTag();
}

class MultiNormalSelectChip<T extends BaseSelectEntity> extends StatefulWidget {
  /// 标签的list
  final List<T> dataList;

  /// 标签的list
  final List<T> selectList;

  ///选择回调事件
  final Function(List<T>) onSelectionChanged;

  MultiNormalSelectChip(this.dataList,
      {this.selectList, this.onSelectionChanged});

  @override
  _MultiNormalSelectChipState createState() =>
      _MultiNormalSelectChipState(selectList);
}

class _MultiNormalSelectChipState<T extends BaseSelectEntity>
    extends State<MultiNormalSelectChip> {
  List<T> selectList;

  _MultiNormalSelectChipState(this.selectList);

  _buildChoiceList() {
    List<Widget> choices = List();
    widget.dataList.forEach((item) {
      choices.add(Container(
        height: 31,
        padding: EdgeInsets.all(4),
        child: ChoiceChip(
          label: Text(
            item.getTag(),
            style: TextStyle(fontSize: 14),
          ),
          selected: selectList.contains(item),
          materialTapTargetSize: MaterialTapTargetSize.padded,
          labelPadding: EdgeInsets.only(bottom: 9),
          padding: EdgeInsets.only(left: 12, right: 12, bottom: 9),
          selectedColor: Colors.white,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.black, width: 0.5),
          ),
          onSelected: (selected) {
            setState(() {
              selectList.contains(item)
                  ? selectList.remove(item)
                  : selectList.add(item);
              widget.onSelectionChanged(selectList);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      children: _buildChoiceList(),
    );
  }
}
