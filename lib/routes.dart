import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  static const route = '/new';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Text("This is new route."),
      ),
    );
  }
}

class TipRoute extends StatelessWidget {
  static const route = '/tip';

  TipRoute({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RouterTestRoute extends StatelessWidget {
  static const route = '/router';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print("路由传递值: $args");
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            Navigator.pushReplacementNamed(context, 'route_page');

            // var result = await Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return TipRoute(
            //         // 路由参数
            //         text: "我是提示xxxx",
            //       );
            //     },
            //   ),
            // );
            // //输出`TipRoute`路由返回结果
            // print("路由返回值: $result");
          },
          child: Text("打开提示页"),
        ),
      ),
    );
  }
}

class SnapRoute extends StatelessWidget {
  static const route = '/snap';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnapRoute'),
      ),
      body: Center(
        child: Image.asset('assets/pic.jpg')
      ),
    );
  }
}
