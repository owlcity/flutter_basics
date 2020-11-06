import 'package:flutter/material.dart';

class SignleChildScrollViewDemo extends StatelessWidget {
  const SignleChildScrollViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Column(
        children: List.generate(50, (index) {
          return Container(
            // width: 150,
            height: 100,
            color: Colors.primaries[index % Colors.primaries.length],
          );
        }).toList(),
      ),
    );
  }
}
