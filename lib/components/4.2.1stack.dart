import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /** 
     * Stack 对未定位（不被 Positioned 包裹）子组件的大小由 fit 参数决定，默认值是 StackFit.loose ，表示子组件自己决定，StackFit.expand 表示尽可能的大
     * alignment: AlignmentDirectional.center,
     */
    return Stack(
      // fit: StackFit.expand,
      // alignment: AlignmentDirectional.bottomEnd,
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
        Container(
          height: 170,
          width: 170,
          color: Colors.blue,
        ),
        Container(
          height: 140,
          width: 140,
          color: Colors.yellow,
        ),
        Positioned(
          left: 10,
          right: 10,
          top: 30,
          bottom: -80,
          child: Container(
            color: Colors.green,
          )
        )
      ],
    );
  }
}