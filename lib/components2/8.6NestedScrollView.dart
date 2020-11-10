import 'package:flutter/material.dart';

class NestedScrollViewDemo extends StatefulWidget {
  NestedScrollViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 230.0,
            pinned: true,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: PageView(),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: StickyTabBarDelegate(
              child: TabBar(
                labelColor: Colors.black,
                controller: this._tabController,
                tabs: <Widget>[
                  Tab(text: '资讯'),
                  Tab(text: '技术'),
                ],
              ),
            ),
          ),
        ];
      },
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          RefreshIndicator(
            onRefresh: () {
              print(('onRefresh'));
            },
            child: _buildTabNewsList(_newsKey, _newsList),
          ),
          _buildTabNewsList(_technologyKey, _technologyList),
        ],
      ),
    );
  }
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: this.child,
    );
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
 _buildTabNewsList(Key key, List<ArticleInfo> list) {
    return ListView.separated(
        key: key,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index].title),
            subtitle: Text('作者：${list[index].author}'),
            onTap: () {
              // toWebView(context, list[index].title, list[index].url);
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 8,
          );
        },
        itemCount: list.length);
  }