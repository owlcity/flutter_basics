import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // color: Colors.blue,
      children: [
        SizedBox(
          height: 20,
          width: double.infinity,
        ),
        Container(
          // padding: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.all(10),
          // color: Colors.red,
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   color: Colors.blue
          // ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            // color: Colors.blue,
            border: Border.all(
              color: Colors.green,
              width: 2
            )
          ),
          child: Text(
            '老张,专注分享Flutter技术及应用',
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
        Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
              ),
              fit: BoxFit.cover
            ),
            border: Border.all(
              color: Colors.blue,
              width: 2
            ),
            // borderRadius: BorderRadius.circular(12),
            shape: BoxShape.circle
          ),
        ),
        Container(
          height: 100,
          color: Colors.blue,
          child: Text('laozhang 一个有态度的程序员'),
          alignment: Alignment(-1, 1),
          constraints: BoxConstraints(
            maxHeight: 100,
            maxWidth: 200,
            minHeight: 100,
            minWidth: 200
          ),
          transform: Matrix4.rotationZ(.1),
        )
      ]
    );
  }
}