import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key key}) : super(key: key);

  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  var _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        // Switch
        child: SwitchListTile(
            title: Text('是否下载'),
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = !_switchValue;
              });
            })
        // child: Switch(
        //     value: _switchValue,
        //     activeColor: Colors.red,
        //     activeTrackColor: Colors.blue,
        //     activeThumbImage: AssetImage('images/smile.png'),
        //     inactiveThumbColor: Colors.black54,
        //     inactiveThumbImage: AssetImage('images/20411648.png',),
        //     inactiveTrackColor: Colors.blue,
        //     onChanged: (value) {
        //       setState(() {
        //         _switchValue = !_switchValue;
        //       });
        //     }),
        );
  }
}
