import 'package:flutter/material.dart';

class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          '老张，专注分享Flutter技术及应用',
          style: TextStyle(
            backgroundColor: Colors.red
          ),
        ),
      ),
    );
   
  }
}
