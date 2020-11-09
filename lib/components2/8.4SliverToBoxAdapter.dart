import 'package:flutter/material.dart';

class SliverToBoxAdapterDemo extends StatelessWidget {
  const SliverToBoxAdapterDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            height: 100,
            color: Colors.black,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 65,
              color: Colors.primaries[index % Colors.primaries.length],
            );
          }, childCount: 50),
        )
      ],
    );
  }
}
