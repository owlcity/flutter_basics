import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var _groupValue = '语文';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          // Radio(
          //     value: '语文',
          //     groupValue: _groupValue,
          //     onChanged: (value) {
          //       setState(() {
          //         _groupValue = value;
          //       });
          //     }),
          // Radio(
          //     value: '数学',
          //     groupValue: _groupValue,
          //     onChanged: (value) {
          //       setState(() {
          //         _groupValue = value;
          //       });
          //     }),
          // Radio(
          //     value: '英语',
          //     groupValue: _groupValue,
          //     activeColor: Colors.red,
          //     onChanged: (value) {
          //       setState(() {
          //         _groupValue = value;
          //       });
          //     }),
          // Column(
          //   children: [
          //     Text('test')
          //   ],
          // )
          Flexible(
            child: RadioListTile(
              title: Text('语文'),
              value: '语文',
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value;
                });
              },
            ),
          ),
          Flexible(
            child: RadioListTile(
              title: Text('数学'),
              value: '数学',
              groupValue: _groupValue,
              onChanged: (value) {
                setState(() {
                  _groupValue = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
