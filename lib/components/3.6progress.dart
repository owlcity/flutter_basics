import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressDemo extends StatelessWidget {
  const ProgressDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [LinearProgressIndicator(
        value: 0.3,
        backgroundColor: Colors.greenAccent,
        valueColor: AlwaysStoppedAnimation(Colors.red),
      ),
        SizedBox(
          height: 20,
        ),
        CircularProgressIndicator(
          value: 0.3,
          backgroundColor: Colors.greenAccent,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
        CupertinoActivityIndicator(
          radius: 20  // radius参数是半径，值越大，控件越大。
        )
      ],
    );
  }
}