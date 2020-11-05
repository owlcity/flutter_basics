import 'package:flutter/material.dart';

class FlowDemo extends StatelessWidget {
  const FlowDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Flow(
        delegate: SimpleFlowDelegate(),
        children: List.generate(5, (index) {
          return Container(
            height: 100,
            color: Colors.primaries[index % Colors.primaries.length],
          );
        }),
      ),
    );
  }
}

class SimpleFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    for(int i = 0; i<context.childCount; ++i) {
       context.paintChild(i,transform: Matrix4.translationValues(0,i*30.0,0));
    }
  }

  @override
  bool shouldRepaint(SimpleFlowDelegate oldDelegate) {
    return false;
  }
}