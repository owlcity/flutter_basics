import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 100,
          width: double.infinity,
        ),
        IconButton(
          icon: Icon(Icons.add), 
          onPressed: (){}
        ),
        RaisedButton(
          child: Text('RisedButton'),
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.transparent
            )
          ),
          elevation: 10.0,
          onPressed: null,
          textColor: Colors.white,
          color: Colors.pink,
          splashColor: Colors.blue,
          onLongPress: () {
            print('onLongPress');
          },
          onHighlightChanged: (highlight) {
            print('onHighlightChanged:$highlight');
          },
        ),
        FlatButton(
          child: Text('FlatButton'),
          color: Colors.blue,
          onPressed: () {},
        ),
        OutlineButton(
          child: Text('OutlineButton'),
          onPressed: () {}
        )
      ],
    );
  }
}
