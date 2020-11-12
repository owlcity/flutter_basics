import 'package:flutter/material.dart';
import 'package:learn_material/demo/button_demo.dart';
import 'package:learn_material/demo/floating_action_button.dart';
import 'package:learn_material/demo/popup_menu_button.dart';

class MaterialComponentsDemo extends StatelessWidget {
  const MaterialComponentsDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'PopupMenuButton', 
            page: PopupMenuButtonDemo()
          ),
          ListItem(
            title: 'FloatingActionButton', 
            page: FloatingActionButtonDemo()
          ),
          ListItem(title: 'Button', page: ButtonDemo()),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  const ListItem({Key key, this.title, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page
          )
          );
      },
    );
  }
}
