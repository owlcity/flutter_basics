import 'package:flutter/material.dart';
import 'package:myapp_iterm/demo/base_demo.dart';
import 'package:myapp_iterm/demo/draw_demo.dart';
import 'package:myapp_iterm/demo/bottom_navigation_bar_demo.dart';
import 'package:myapp_iterm/demo/layout_demo.dart';
import 'package:myapp_iterm/demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Hello()
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primaryColor: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigration',
            //   onPressed: () => debugPrint('Navigrator button is pressed'),
            // ),
            title: Text('hello world'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('search button on pressed'))
            ],
            elevation: 0.0,
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ]),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BaseDemo(),
              LayoutDemo()
              // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ],
          ),
          drawer: DrawDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
