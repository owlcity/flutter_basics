import 'package:flutter/material.dart';
import 'package:learn_material/demo/basic_demo.dart';
import 'package:learn_material/demo/bottom_navigationbar_demo.dart';
import 'package:learn_material/demo/container_box_decoration.dart';
import 'package:learn_material/demo/draw_demo.dart';
import 'package:learn_material/demo/grid_view_demo.dart';
import 'package:learn_material/demo/listView_demo.dart';
import 'package:learn_material/demo/material_components.dart';
import 'package:learn_material/demo/navigator_demo.dart';
import 'package:learn_material/demo/sliver_demo.dart';
import 'package:learn_material/demo/view_demo.dart';
import 'package:learn_material/state/state_management.dart';
import './demo/navigator_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter 学习',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
      debugShowCheckedModeBanner: false,
      // home: Home(),
      // home: NavigatorDemo(),
      initialRoute: '/state-management',
      routes: {
        // '/': (context) =>  NavigatorDemo(),
        '/': (context) => DefaultTabControllerDemo(),
        '/about': (context) => PageDemo(title: 'About'),
        '/mdc': (context) => MaterialComponentsDemo(),
        '/state-management': (context) => StateManagementDemo()
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return DefaultTabControllerDemo();
    return SliverDemo();
  }
}

class DefaultTabControllerDemo extends StatelessWidget {
  const DefaultTabControllerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
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
              bottom: TabBar(
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                    Tab(icon: Icon(Icons.local_florist)),
                    Tab(icon: Icon(Icons.change_history)),
                    Tab(icon: Icon(Icons.directions_bike)),
                    Tab(icon: Icon(Icons.star_border)),
                  ])),
          // body: Hello(),
          body: TabBarView(
            children: <Widget>[
              // Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              // ContainerBoxDemo(),
              ListViewDemo(),

              BasicDemo(),
              // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
              GridViewDemo(),
              ViewDemo()
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
