import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName:
              Text('wanghao', style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: Text('wanghao@ninghao.net'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3069743845,792289857&fm=26&gp=0.jpg'),
          ),
          decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                image: NetworkImage(
                    'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2107642534,1339643071&fm=26&gp=0.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.green[400].withOpacity(0.6), BlendMode.hardLight),
              )),
        ),
        ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () {
              Navigator.pop(context);
            }),
      ],
    ));
  }
}
