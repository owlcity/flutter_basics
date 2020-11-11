import 'package:flutter/material.dart';
import 'package:learn_material/demo/listView_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter 学习',
      theme: ThemeData(primarySwatch: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material'),
        elevation: 3.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
          onPressed: () {
            print('leading');
          }),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed.'),
          )
        ],
      ),
      // body: Hello(),
      body: ListViewDemo(),
    );
  }
}
