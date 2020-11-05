import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatelessWidget {
  const FractionallySizedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.blue,
      child: FractionallySizedBox(
          widthFactor: .8,
          heightFactor: .3,
          child: Container(
            color: Colors.red,
          ),
      ),
    );
  }
}