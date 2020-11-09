import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomScrollViewDemo extends StatelessWidget {
  const CustomScrollViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      reverse: false,
      slivers: <Widget>[
        SliverGrid.count(
          crossAxisCount: 4,
          children: List.generate(8, (index) {
            return Container(
              color: Colors.primaries[index % Colors.primaries.length],
              alignment: Alignment.center,
              child: Text(
                '$index',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          }).toList(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 85,
              alignment: Alignment.center,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Text(
                '$index',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          }, childCount: 25),
        )
      ],
    );
    ;
  }
}
