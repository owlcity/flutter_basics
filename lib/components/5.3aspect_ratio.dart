import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  const AspectRatioDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     * 经过测试父级必须设置alignment,否则aspectRatio 撑满父级
     */
    return Container(
        height: 300,
        width: 300,
        color: Colors.blue,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 2 / 1,
          child: Container(color: Colors.red,),
        ),
      );
  }
}