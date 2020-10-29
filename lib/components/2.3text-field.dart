import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  var _textFieldValue = '';
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController()
      ..addListener(() {
        // 获取输入内容变为大写
        _controller.text = _controller.text.toUpperCase();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text-field'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  prefixIcon: Icon(Icons.person),
                  labelText: '用户名',
                  labelStyle: TextStyle(color: Colors.red),
                  helperText: '用户名未输入6-10位字母',
                  helperStyle: TextStyle(color: Colors.blue),
                  helperMaxLines: 1,
                  hintText: '请输入用户名',
                  hintStyle: TextStyle(color: Colors.grey),
                  hintMaxLines: 1,
                  errorText: '用户名输入错误',
                  errorStyle: TextStyle(color: Colors.red),
                  errorMaxLines: 1,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  counterText: '${_textFieldValue.length}/32'),
              onChanged: (value) {
                setState(() {
                  _textFieldValue = value;
                });
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: '请输入密码'),
            ),
            TextField(
                decoration: InputDecoration(hintText: '限制用户输入'),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
                  // WhitelistingTextInputFormatter(),
                ]),
            TextField(
              maxLength: 100,
              buildCounter: (BuildContext context,
                  {
                    int currentLength, int maxLength, bool isFocused
                  }) 
                {
                return Text('');
              },
            ),
            Container(
              width: 250,
              height: 60,
              child: TextField(
                controller: _controller,
                toolbarOptions: ToolbarOptions(
                    copy: true, cut: true, paste: true, selectAll: true),
                decoration: InputDecoration(
                    hintText: 'QQ号/邮箱号/手机号',
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            // color: Color(0x00FF0000)
                            color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100)))),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  dispose() {
    super.dispose();
    _controller.dispose();
  }
}
