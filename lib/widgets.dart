import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordsWidget extends StatefulWidget {

  final _state = _RandomWordsState();

  @override
  State<StatefulWidget> createState() => _state;

  void update() => _state.update();
}

class _RandomWordsState extends State<RandomWordsWidget> {

  var _wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(_wordPair.toString()),
    );
  }

  void update() {
    setState(() {
      _wordPair = WordPair.random();
    });
  }
}