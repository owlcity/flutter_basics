import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // children: <Widget>[
          //   IconBadge(Icons.pool),
          //   IconBadge(Icons.beach_access, size: 65.0),
          //   IconBadge(Icons.airplanemode_active),
          // ],
          // 固定大小盒子
          children: <Widget>[
            // StackDemo()
            AspectRatio(
              aspectRatio: 16.0/9.0,
              child: Container(
                color: Color.fromRGBO(12, 92, 212, 1.0),
              )
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 200.0,
                minHeight: 100.0,
              ),
              child: Container(
                color: Color.fromRGBO(233, 21, 23, 1.0),
              ),
            )
          ]
        ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        SizedBox(
            width: 200.0,
            height: 200.0,
            child: Container(
                // alignment: Alignment(0.0,0.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 34, 255, 1),
                  borderRadius: BorderRadius.circular(8.8),
                ),
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0))),
        SizedBox(
          height: 12.0,
        ),
        SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
                decoration: BoxDecoration(
                    // color: Color.fromRGBO(113, 34, 255, 1),
                    // borderRadius: BorderRadius.circular(8.8),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(113, 34, 255, 1),
                      Color.fromRGBO(13, 124, 205, 1),
                    ])),
                child:
                    Icon(Icons.brightness_2, color: Colors.white, size: 32.0))),
        Positioned(
            bottom: 20,
            right: 20,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 22.0))
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
