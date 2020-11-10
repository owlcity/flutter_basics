import 'package:flutter/material.dart';

class DialogDemo extends StatelessWidget {
  const DialogDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('Dialog'),
        onPressed: () async {
          var result = await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('提示'),
                content: Text('确认删除吗?'),
                actions: <Widget>[
                  FlatButton(onPressed: () {
                    Navigator.of(context).pop('cancel');
                  }, child: Text('取消')),
                  FlatButton(onPressed: () {
                    Navigator.of(context).pop('ok');
                  }, child: Text('确认'))
                ],
              );
            });
      print('$result');

        });
  }
}
