import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Image.network('http://pic1.win4000.com/pic/c/cf/cdc983699c.jpg',
              width: 100, height: 200),
          /** 
           * fit: BoxFit
           * fill：完全填充，宽高比可能会变。
           *  contain：等比拉伸，直到一边填充满。
           *  cover：等比拉伸，直到2边都填充满，此时一边可能超出范围。
           *  fitWidth：等比拉伸，宽填充满。
           *  fitHeight：等比拉伸，高填充满。
           *  none：当组件比图片小时，不拉伸，超出范围截取。
           *  scaleDown：当组件比图片小时，图片等比缩小，效果和contain一样。
           * BoxFit.none的裁减和alignment相关，默认居中
           */
          // Container(
          //   color: Colors.red.withOpacity(.3),
          //   child: Image.asset('images/test.jpg',
          //       width: 100,
          //       height: 200,
          //       fit: BoxFit.cover,
          //       // alignment: Alignment.topCenter,
          //       colorBlendMode: BlendMode.srcOver),
          // ),
          // Image.asset(
          //   'images/smile.png',
          //   width: 100,
          //   height: 200,
          // ),
          // Expanded(child: _buildBlendModeGrid()),
          // Image.asset(
          //   'images/test.jpg',
          //   height:150,
          //   width: double.infinity,
          //   repeat: ImageRepeat.repeatX,
          // ),
          Row(
            children: <Widget>[
              Image.asset(
                'images/test.jpg',
                height: 150,
              ),
              SizedBox(
                width: 20,
              ),
              Directionality(textDirection: TextDirection.rtl, child: Image.asset(
                'images/test.jpg',
                height: 150,
                matchTextDirection: true,
              ))
            ],
          ),
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/puffin.jpg',
            frameBuilder: (BuildContext context, Widget child, int frame,
                bool wasSynchronouslyLoaded) {
              if (wasSynchronouslyLoaded) {
                return child;
              }
              return AnimatedOpacity(
                child: child,
                opacity: frame == null ? 0 : 1,
                duration: const Duration(seconds: 2),
                curve: Curves.easeOut,
              );
            },
          ),
          Icon(
            Icons.add,
            size: 40,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

_buildBlendModeGrid() {
  return GridView(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, mainAxisSpacing: 30, crossAxisSpacing: 5),
    children: <Widget>[
      _buildBlendGridItem(BlendMode.clear),
      _buildBlendGridItem(BlendMode.src),
        _buildBlendGridItem(BlendMode.dst),
        _buildBlendGridItem(BlendMode.srcOver),
        _buildBlendGridItem(BlendMode.dstOver),
        _buildBlendGridItem(BlendMode.srcIn),
        _buildBlendGridItem(BlendMode.dstIn),
        _buildBlendGridItem(BlendMode.srcOut),
        _buildBlendGridItem(BlendMode.dstOut),
        _buildBlendGridItem(BlendMode.srcATop),
        _buildBlendGridItem(BlendMode.dstATop),
        _buildBlendGridItem(BlendMode.xor),
        _buildBlendGridItem(BlendMode.plus),
        _buildBlendGridItem(BlendMode.modulate),
        _buildBlendGridItem(BlendMode.screen),
        _buildBlendGridItem(BlendMode.overlay),
        _buildBlendGridItem(BlendMode.darken),
        _buildBlendGridItem(BlendMode.lighten),
        _buildBlendGridItem(BlendMode.colorDodge),
        _buildBlendGridItem(BlendMode.colorBurn),
        _buildBlendGridItem(BlendMode.hardLight),
        _buildBlendGridItem(BlendMode.softLight),
        _buildBlendGridItem(BlendMode.difference),
        _buildBlendGridItem(BlendMode.exclusion),
        _buildBlendGridItem(BlendMode.multiply),
        _buildBlendGridItem(BlendMode.hue),
        _buildBlendGridItem(BlendMode.saturation),
        _buildBlendGridItem(BlendMode.color),
        _buildBlendGridItem(BlendMode.luminosity)],
  );
}

_buildBlendGridItem(BlendMode blendMode) {
  return GridTile(
    child: Image.asset(
      'images/test.jpg',
      color: Colors.purple,
      colorBlendMode: blendMode,
    )
  );
}
