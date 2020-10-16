import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        // 自定义
        // DrawerHeader(
        //   child: Text('header'.toLowerCase()),
        //   decoration: BoxDecoration(
        //     color: Colors.grey[100]
        //   ),
        // ),
        // 账户信息
        UserAccountsDrawerHeader(
          accountName: Text('zhang_zhang',
              style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: Text('211ii-@qq.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3537802314,1132345328&fm=26&gp=0.jpg'),
          ),
          decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=371512720,1904701963&fm=11&gp=0.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight))),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        )
      ],
    ));
  }
}
