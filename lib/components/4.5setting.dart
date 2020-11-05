import 'package:flutter/material.dart';

class SettingDemo extends StatelessWidget {
  const SettingDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          _SettingItem(
              iconData: Icons.notifications,
              iconColor: Colors.blue,
              title: '消息中心',
              suffix: _NotificationsText(text: '121')),
          _SettingItem(
            iconData: Icons.location_on,
            iconColor: Colors.grey,
            title: '阅读过的文章',
            suffix: _Suffix(
              text: '1034篇',
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingItem extends StatelessWidget {
  const _SettingItem(
      {Key key, this.iconData, this.iconColor, this.title, this.suffix})
      : super(key: key);

  final IconData iconData;
  final Color iconColor;
  final String title;
  final Widget suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          Icon(
            iconData,
            color: iconColor,
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(child: Text('$title')),
          suffix,
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}

class _Suffix extends StatelessWidget {
  final String text;
  const _Suffix({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(color: Colors.grey.withOpacity(.5)),
    );
  }
}

class _NotificationsText extends StatelessWidget {
  final String text;
  const _NotificationsText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.red
      ),
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}
