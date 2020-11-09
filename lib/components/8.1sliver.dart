import 'package:flutter/material.dart';

class SliverListDemo extends StatelessWidget {
  const SliverListDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverList(
        delegate: SliverChildBuilderDelegate((content, index) {
          return Container(
            height: 65,
            color: Colors.primaries[index % Colors.primaries.length],
          );
        }, childCount: 5),
      ),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 3),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            color: Colors.primaries[index % Colors.primaries.length],
          );
        }, childCount: 20),
      )
    ]);
  }
}
