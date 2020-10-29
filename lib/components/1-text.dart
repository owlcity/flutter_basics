import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本组件'),
      ),
      body: Container(
        width: 200,
        height: 100,
        color:  Colors.blue.withOpacity(.4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '老张老张老张老张老张老张老张老张老张老张老张老张老张老张',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Text(
              '老张',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0
              ),
            )
          ],
        )
      )
    );
  }
}
