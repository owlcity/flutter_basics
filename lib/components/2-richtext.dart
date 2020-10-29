import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('rich-text')),
      body: Container(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <InlineSpan>[
                TextSpan(
                    text: '老张111',
                    style: TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('aaa');
                      }),
                TextSpan(text: '一个有态度的程序员'),
                TextSpan(text: '!')
              ]),
        ),
      ),
    );
  }
}
