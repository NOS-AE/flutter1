import 'package:flutter/material.dart';
import 'package:flutter1/routes.dart';
import 'package:flutter1/widgets.dart';

class MyHomePage extends StatefulWidget {
  static const route = '/';

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final randomWordWidget = RandomWordsWidget();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text('one more text'),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, NewRoute.route); // 通过路由打开
              },
              child: Text("route"),
              textColor: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, RouterTestRoute.route,
                    arguments: "hi"); // 通过路由替换
              },
              child: Text("route with param"),
              textColor: Colors.blue,
            ),
            randomWordWidget,
            FlatButton(
              onPressed: () {
                randomWordWidget.update();
              },
              child: Text("next word"),
              textColor: Colors.redAccent,
            ),
            FlatButton(onPressed: (){
              Navigator.pushNamed(context, SnapRoute.route);
            }, child: Text('take a snap'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
