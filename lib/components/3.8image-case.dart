import 'package:flutter/material.dart';


class ImageCaseDemo extends StatelessWidget {
  const ImageCaseDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/test.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.only(left: 8, top: 8, right: 20, bottom: 8),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/chat.png'),
                centerSlice: Rect.fromLTWH(20, 10, 1, 60),
                fit: BoxFit.fill
              )
            ),
            child: Text('老孟，专注分享Flutter技术和应用实战。'
      '老孟，专注分享Flutter技术和应用实战。老孟，专注分享Flutter技术和应用实战。老孟，专注分享Flutter技术和应用实'),
          )
        ],
      ),
    );
  }
}