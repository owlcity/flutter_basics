import 'package:flutter/material.dart';

class DateSelectDemo extends StatelessWidget {
  const DateSelectDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('弹出日期组件'),
        onPressed: () async {
          await showDatePicker(
              context: context, 
              initialDate: DateTime.now(),
              firstDate: DateTime(2010),
              lastDate: DateTime(2025),
              errorFormatText: '错误的日期格式',
              errorInvalidText: '日期格式非法',
              fieldHintText: '月/日/年',
              fieldLabelText: '填写日期',
            );
        });
  }
}
