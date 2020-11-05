import 'package:flutter/material.dart';


class MyInfoDemo extends StatelessWidget {
  const MyInfoDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(.5),
      alignment: Alignment.center,
      child: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage('images/test.jpg')
                )
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('老张Flutter', style: TextStyle(fontSize: 20),),
                  Text('Flutter、Android', style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 14,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}