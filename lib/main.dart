import 'package:flutter/material.dart';
// import 'package:learn_material/components/1-text.dart';
// import 'package:learn_material/components/2-richtext.dart';
// import 'package:learn_material/components/2.3text-field.dart';
import 'package:learn_material/components/2.4text_example.dart';
import 'package:learn_material/components/3.1button.dart';
import 'package:learn_material/components/3.2radio.dart';
import 'package:learn_material/components/3.3checkbox.dart';
import 'package:learn_material/components/3.4slider.dart';
import 'package:learn_material/components/3.5switch.dart';
import 'package:learn_material/components/3.6progress.dart';
import 'package:learn_material/components/3.7image.dart';
// import 'package:learn_material/components/5-icons.dart';
// import 'package:learn_material/components/6-switch.dart';
// import 'package:learn_material/components/7-form.dart';
// import 'package:learn_material/components/2-layout.dart';
// import 'package:learn_material/components/3-button.dart';
// import 'package:learn_material/components/4-image.dart';
// import 'components/1-text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material-UI 学习',
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(
      //       color: Colors.blue,
      //       fontSize: 14.0
      //     ),
      //   )
      // ),
      // home: TextDemo()
      // home: RichTextDemo()
      // home: LayoutRowDemo()
      // home: TextFieldDemo()
      // home: TextComponentsDemo(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material-基础组件'),
        ),
        // body: ButtonDemo(),
        // body: RadioDemo(),
        // body: CheckboxDemo(),
        // body: SliderDemo(),
        // body: SwitchDemo()
        // body: ProgressDemo(),
        body: ImageDemo(),
      )
    );
  }
}
