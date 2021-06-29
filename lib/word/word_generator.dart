import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class WordGenerator extends StatefulWidget {
  @override
  _WordGeneratorState createState() => _WordGeneratorState();
}

class _WordGeneratorState extends State<WordGenerator> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
        body: Center(
      child: Text(wordPair.asPascalCase),
    ));
  }
}
