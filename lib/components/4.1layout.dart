import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black)
      ),
      /** 
       * mainAxisAlignment
       * start center end space-between space-around space-evenly
       * crossAxisAlignment
       * (center 默认) start end stretch
       * 
       * verticalDirection: 不太理解
       */
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignment.end,
        textDirection: TextDirection.rtl,
        verticalDirection:VerticalDirection.up,
        children: <Widget>[
        Container(
          height: 50,
          width: 100,
          color: Colors.red,
          // alignment: Alignment.center,
          child: Text('1'),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text('2'),
        ),
        Container(
          height: 150,
          width: 100,
          color: Colors.green,
          alignment: Alignment.center,
          child: Text(
            '3',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ],),
    );
  }
}