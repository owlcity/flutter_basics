import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextComponentsDemo extends StatelessWidget {
  const TextComponentsDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('文本组件')),
        body: Container(
          // child: _buildGradientText()
          // child: _buildChipText(BuildContext, context),
          // child: _buildAgreeMent(),
          child: _buildBack(),
        ));
  }

  _buildGradientText() {
    return Builder(
      builder: (BuildContext context) {
        RenderBox box = context.findRenderObject();
        final Shader linearGradient = LinearGradient(
          colors: <Color>[Colors.purple, Colors.blue],
        ).createShader(
            Rect.fromLTWH(0.0, 0.0, box?.size?.width, box?.size?.height));

        return Text(
          '专注分享Flutter技术和应用实战1',
          style: new TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient),
        );
      },
    );
  }

  _buildChipText(BuildContext, context) {
    return RichText(
      text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <InlineSpan>[
            WidgetSpan(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue),
                child: Text(
                  '判断题',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            TextSpan(text: '沫灭火器可用于带电灭')
          ]),
    );
  }

  _buildAgreeMent() {
    return Text.rich(
      TextSpan(
          text: '登录即代表同意并阅读',
          style: TextStyle(fontSize: 11, color: Color(0xFF999999)),
          children: [
            TextSpan(
                text: '《服务协议》',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('ontap');
                  })
          ]),
    );
  }

  _buildBack() {
    return Text.rich(TextSpan(
        text: '回复',
        style: TextStyle(fontSize: 11, color: Color(0xFF999999)),
        children: [
          TextSpan(
            text: '@老张：',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('onTap');
              },
          ),
          TextSpan(
            text: '你好，想知道Flutter发展前景如何？',
          ),
        ]));
  }
}
