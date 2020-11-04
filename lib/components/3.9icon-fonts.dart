import 'package:flutter/material.dart';

class IconFontsDemo extends StatelessWidget {
  const IconFontsDemo({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 20,
          ),
          /** 
           * 经检测fontFamily 在定义时首字母不能为小写
           */
          Icon(
            IconData(
              0xe617,
              fontFamily: 'AppIconFonts',
            ),
            color: Colors.red,
            size: 40,
          )
        ],
      ),
    );
  }
}