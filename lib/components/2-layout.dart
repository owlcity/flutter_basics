import 'package:flutter/material.dart';


class LayoutRowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('水平布局'),
      ),
      body: Container(
        height: 200.0,
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   // crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: <Widget>[
        //     Text(
        //       'test',
        //       textDirection: TextDirection.rtl,
        //     ),
        //     Container(
        //       width: 50,
        //       height: 100,
        //       color: Colors.redAccent,
        //     ),
        //     Container(
        //         height: 50,
        //         width: 50,
        //         color: Colors.blueAccent,
        //       ),
        //       Container(
        //         color: Colors.black,
        //         height: 75,
        //         width: 75,
        //       )
        //   ],
        // ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              'Flutter',
              style: TextStyle(
                color: Colors.green,
                fontSize: 80.0,
              )
            ),
            Text(
              'Flutter',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
              )
            )
          ],
        )
      ),
    );
  }
}