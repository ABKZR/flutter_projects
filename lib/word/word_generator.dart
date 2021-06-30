import 'package:flutter/material.dart';
import 'package:flutter_project/word/random_words.dart';

class WordGenerator extends StatefulWidget {
  @override
  _WordGeneratorState createState() => _WordGeneratorState();
}

class _WordGeneratorState extends State<WordGenerator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        primaryColor: Colors.white,
      ), 
      home: RandomWords(),
    );
  }
}

