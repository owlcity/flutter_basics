import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  CheckboxDemo({Key key}) : super(key: key);

  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  var _checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      /** 
       * checkbox
       */
      // child: Checkbox(
      //     value: _checkboxValue,
      //     activeColor: Colors.red,
      //     onChanged: (value) {
      //       setState(() {
      //         _checkboxValue = !_checkboxValue;
      //       });
      //     }),
      /** 
       * CheckboxListTile
       * CheckboxListTile默认是充满父组件的，因此需要Container限制其宽度
       * ListTileControlAffinity
       * leading：勾选框在开头位置。
       * trailing：勾选框在结尾位置，
       * platform：根据平台确定
       * selected参数设置true，secondary、title和subtitle都会被渲染为activeColor的颜色
       */
      child: CheckboxListTile(
          title: Text('老张'),
          subtitle: Text('一个有态度的程序员'),
          secondary: Icon(Icons.person),
          selected: true,
          activeColor: Colors.red,
          value: _checkboxValue,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              _checkboxValue = !_checkboxValue;
            });
          }),
    );
  }
}
