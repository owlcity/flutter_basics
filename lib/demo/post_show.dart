import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShowDemo extends StatelessWidget {
  final Post post;

  const PostShowDemo({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
            post.imageUrl
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}', style: Theme.of(context).textTheme.bodyText1),
                Text('${post.author}', style: Theme.of(context).textTheme.bodyText2),
                SizedBox(height: 32.0),
                Text('${post.description}', style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
