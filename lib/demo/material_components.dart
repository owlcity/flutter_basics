import 'package:flutter/material.dart';
import 'package:learn_material/demo/button_demo.dart';
import 'package:learn_material/demo/floating_action_button.dart';
import 'package:learn_material/demo/popup_menu_button.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import 'slider_demo.dart';
import './datetime_demo.dart';
import './simple_dialog_demo.dart';


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
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'Date & Time', page: DateTimeDemo()),
          ListItem(title: 'Slider', page: SliderDemo()),
          ListItem(title: 'Switch', page: SwitchDemo()),
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
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
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
