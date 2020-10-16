import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  'https://a.vpimg3.com/upload/merchandise/pdcvis/603323/2020/0730/41/523ebb25-8795-4b37-98ac-e5429c82174c_840x840_90.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(posts[index].title,
                style: Theme.of(context).textTheme.subtitle1),
            Text(posts[index].author,
                style: Theme.of(context).textTheme.subtitle2)
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
