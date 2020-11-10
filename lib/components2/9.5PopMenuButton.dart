import 'package:flutter/material.dart';

class PopMenuButtonDemo extends StatelessWidget {
  const PopMenuButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.add),
      initialValue: '语文',
      tooltip: 'PopupMenuButton',
      elevation: 5,
      padding: EdgeInsets.all(5),
      color: Colors.red,
      offset: Offset(0,100),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.red
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      onSelected: (value){
        print('$value');
      },
      onCanceled: (){
        print('onCanceled');
      },
      itemBuilder: (context) {
      return <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: '语文',
          child: Text('语文')
        ),
        PopupMenuDivider(),
        PopupMenuItem<String>(
          value: '数学',
          child: Text('数学'),
          textStyle: TextStyle(color: Colors.yellow),
        ),
      ];
    });
  }
}
