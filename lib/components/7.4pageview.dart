import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue
          ),
          child: Text('pageview1'),
        ),
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.yellow
          ),
          child: Text('pageview2'),
        ),
      ],
    );
  }
}