import 'package:flutter/material.dart';
import 'package:flutter1/routes.dart';
import 'package:flutter1/stateroutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: MyHomePage.route, // 主页
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 路由表
      routes: {
        NewRoute.route: (context) => NewRoute(),
        RouterTestRoute.route: (context) => RouterTestRoute(),
        MyHomePage.route: (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        SnapRoute.route: (context) => SnapRoute(),
      },
      // onGenerateRoute: (RouteSettings settings) {
      //   // 放弃使用路由表, 统一验证session、token等，并统一跳转
      //   return MaterialPageRoute(builder: (context) {
      //     var args = settings.arguments as Arg;
      //     String routeName = settings.name;
      //     print(routeName);
      //     print(args.title);
      //     return MyHomePage(title: "hey",);
      //   });
      // },
    );
  }
}

class Arg {
  final String title;
  Arg(this.title);
}