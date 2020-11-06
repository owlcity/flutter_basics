import 'package:flutter/material.dart';

class ScrollControllerDemo extends StatefulWidget {
  ScrollControllerDemo({Key key}) : super(key: key);

  @override
  _ScrollControllerDemoState createState() => _ScrollControllerDemoState();
}

class _ScrollControllerDemoState extends State<ScrollControllerDemo> {
  ScrollController _controller;

  void initState() {
    _controller = ScrollController()
      ..addListener(() {
        print('${_controller.position}');
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
              child: Text('滚动到指定位置'),
              onPressed: () {
                _controller.animateTo(200,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
              }),
        ),
        Expanded(
            child: ListView.builder(
          controller: _controller,
          reverse: false,
          itemBuilder: (BuildContext context, int index) {
            return _ListItem(title: '$index');
          },
          itemCount: 40,
          itemExtent: 50,
        ))
      ],
    );
  }
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
