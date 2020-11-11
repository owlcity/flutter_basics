import 'package:flutter/material.dart';

class ShapeDemo extends StatelessWidget {
  const ShapeDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          shape: BeveledRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Colors.red
            ),
            borderRadius: BorderRadius.circular(0)
          ),
          child: Text('老张'),
          onPressed: (){}
        ),
        SizedBox(
          height: 20,
          width: double.infinity,
        ),
        RaisedButton(
          shape: Border(
            top: BorderSide(
              color: Colors.red,
              width: 2
            )
          ),
          child: Text('老张'),
          onPressed: () {}
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          shape: CircleBorder(side: BorderSide(color: Colors.red)),
          child: Text('老张'),
          onPressed: () {},
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(4)),
          child: Text('老张'),
          onPressed: () {},
        ),
        RaisedButton(
          shape: StadiumBorder(
              side: BorderSide(color: Colors.red),),
          child: Text('老张'),
          onPressed: () {},
        )
      ],
    );
  }
}
