import 'package:flutter/material.dart';

class FlexibleDemo extends StatelessWidget {
  const FlexibleDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.blue,
          height: 50,
          width: 100,
        ),
        /** 
         *  1 Container 组件的大小是如何调整的吗？Container 默认是适配子控件大小的，但当设置对齐方式时 Container 将会填满父组件，因此是否填满剩余空间取决于子组件是否需要填满父组件。
         * 2 Expanded 继承字 Flexible，fit 参数固定为 FlexFit.tight，也就是说 Expanded 必须（强制）填满剩余空间。上面的 OutlineButton 想要充满剩余空间可以直接使用 Expanded
         * 3 Spacer 的本质也是 Expanded 的实现的，和Expanded的区别是：Expanded 可以设置子控件，而 Spacer 的子控件尺寸是0，因此Spacer适用于撑开 Row、Column、Flex 的子控件的空隙
         */
        Flexible(
            // child: Container(
            //   color: Colors.red,
            //   height: 50,
            //   alignment: Alignment.center,
            //   child: Text(
            //     'Container',
            //     style: TextStyle(color: Colors.white),
            //   ),
            // )
            child: OutlineButton(
              child: Text('OutlineButton'),
              onPressed: null,
            ),
        ),
        Expanded(
          child: OutlineButton(
            child: Text('OutlineButton'),
            onPressed: null,
          ),
        ),
        Container(
          color: Colors.blue,
          height: 50,
          width: 100,
        ),
      ],
    );
    // Row(
    //   children: <Widget>[
    //     Container(width: 100,height: 50,color: Colors.green,),
    //     Spacer(flex: 2,),
    //     Container(width: 100,height: 50,color: Colors.blue,),
    //     Spacer(),
    //     Container(width: 100,height: 50,color: Colors.red,),
    //   ],
    // )
  }
}
