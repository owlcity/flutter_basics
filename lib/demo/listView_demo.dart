import 'package:flutter/material.dart';
import 'package:learn_material/model/post.dart';
import 'post_show.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key key}) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              Image.network(posts[index].imageUrl),
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(posts[index].author,
                  style: Theme.of(context).textTheme.bodyText2),
              SizedBox(height: 16.0),
            ],
          ),
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  debugPrint('Tap');
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PostShowDemo(post: posts[index])));
                }),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
