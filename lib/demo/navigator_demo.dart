import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  const NavigatorDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text('Home'),
              onPressed: null,
            ),
            FlatButton(
              child: Text('About'),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => PageDemo(title: 'About')
                //   )
                // );
                // 在material中定义后
                Navigator.pushNamed(context, '/about');
              },
            )
          ],
        ),
      ),
    );
  }
}

class PageDemo extends StatelessWidget {
  final String title;

  const PageDemo({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
