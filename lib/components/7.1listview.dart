import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildList1();
  }
}

// 3 ListView.separated
_buildList3() {
  return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 45,
          alignment: Alignment.center,
          child: Text('$index'),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
      itemCount: 30
    );
}

// 2 ListView.builder
_buildList1() {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    reverse: false,
    itemBuilder: (BuildContext context, int index) {
      return _ListItem(
        title: '$index',
      );
    },
    itemCount: 30,
    itemExtent: 50,
  );
}

// 1 ListView
_buildList() {
  return ListView(
    children: <Widget>[
      _ListItem(title: '1'),
      _ListItem(title: '2'),
      _ListItem(title: '3'),
      _ListItem(title: '4'),
      _ListItem(title: '5'),
      _ListItem(title: '6'),
    ],
  );
}

class _ListItem extends StatelessWidget {
  final String title;
  const _ListItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 45,
        alignment: Alignment.center,
        child: Text('$title'),
      ),
    );
  }
}
