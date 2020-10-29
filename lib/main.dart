import 'package:flutter/material.dart';
import 'package:learn_material/components/1-text.dart';
import 'package:learn_material/components/2-richtext.dart';
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
      home: RichTextDemo()
      // home: LayoutRowDemo()
      // home: ButtonDemo()
      // home: ImageDemo()
      // home: IconsDemo()
      // home: SwitchAndCheckboxDemo(),
      // home: FormDemo(),
    );
  }
}
