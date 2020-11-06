import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return _buildGridView();
    // return _buildGridView2();
    // return _buildGridView3();
    // return _buildGridView4();
    return _buildGridView5();
  }
}

// GridView extent
_buildGridView5() {
  return GridView.extent(
    maxCrossAxisExtent: 100,
    children: List.generate(50, (index) {
      return Container(
        height: 80,
        alignment: Alignment.center,
        color: Colors.primaries[index % Colors.primaries.length],
        child: Text('$index'),
      ); 
    }),
  );
}

// GirdView count/
_buildGridView4() {
  return GridView.count(
    crossAxisCount: 3,
    children: List.generate(50, (index) {
      return Container(
        height: 80,
        color: Colors.primaries[index % Colors.primaries.length],
        child: Text('$index'),
      );
    }),
  );
}

// GridView custom
_buildGridView3() {
  return GridView.custom(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    childrenDelegate: SliverChildBuilderDelegate((context, index) {
      return Container(
        height: 80,
        color: Colors.primaries[index % Colors.primaries.length],
      );
    }, childCount: 50),
  );
}

// 2 gridview builder
_buildGridView2() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    itemBuilder: (context, index) {
      return Container(
        height: 80,
        color: Colors.primaries[index % Colors.primaries.length],
      );
    },
    itemCount: 50,
  );
}

// 1 gridview
_buildGridView() {
  return GridView(
    scrollDirection: Axis.vertical,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 4),
    children: <Widget>[
      _createGridViewItem(Colors.primaries[0]),
      _createGridViewItem(Colors.primaries[1]),
      _createGridViewItem(Colors.primaries[2]),
      _createGridViewItem(Colors.primaries[3])
    ],
  );
}

_createGridViewItem(Color color) {
  return Container(
    height: 80,
    color: color,
  );
}
