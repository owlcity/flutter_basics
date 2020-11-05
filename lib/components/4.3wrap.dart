import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        // direction: Axis.vertical,
        alignment: WrapAlignment.spaceBetween,
        // crossAxisAlignment: WrapCrossAlignment.start,
        // runAlignment: WrapAlignment.spaceEvenly,
        textDirection: TextDirection.rtl,
        verticalDirection: VerticalDirection.up,
        spacing: 5,
        runSpacing: 10,
        children: List.generate(10, (i) {
          double w = 50.0 + i * 10;
          // double h = 50.0 + i * 5;
          return Container(
            height: 100,
            width: w,
            color: Colors.primaries[i],
            child: Text('$i'),
          );
        }),
      ),
    );
  }
}
