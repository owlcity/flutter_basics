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
import 'package:learn_material/components/3.8image-case.dart';
import 'package:learn_material/components/3.9icon-fonts.dart';
import 'package:learn_material/components/4.1layout.dart';
import 'package:learn_material/components/4.2.1stack.dart';
import 'package:learn_material/components/4.2.2indexedStack.dart';
import 'package:learn_material/components/4.3wrap.dart';
import 'package:learn_material/components/4.4flow.dart';
import 'package:learn_material/components/4.5setting.dart';
import 'package:learn_material/components/4.6flowMenu.dart';
import 'package:learn_material/components/4.7flow_circle.dart';
import 'package:learn_material/components/5.1container.dart';
import 'package:learn_material/components/5.2sized_box.dart';
import 'package:learn_material/components/5.3aspect_ratio.dart';
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
        // body: ImageDemo(),
        // body: ImageCaseDemo(),
        // body: IconFontsDemo(),
        // body: LayoutDemo(),
        // body: StackDemo()
        // body: IndexedStackDemo(),
        // body: WrapDemo(),
        // body: FlowDemo(),
        // body: SettingDemo()
        // body: DemoFlowPopMenu(),
        // body: DemoFlowMenu(),
        // body: ContainerDemo(),
        // body: SizedBoxDemo(),
        body: AspectRatioDemo(),


      )
    );
  }
}
