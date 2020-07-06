import 'package:flutter/material.dart';
import 'package:proc1/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    //throw UnimplementedError();
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = [
    {
      'questionText': 'What\'s your favorite colour?',
      'answers': ['Blue', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'When did we first kiss?',
      'answers': ['Sept 1', 'oct 14th', 'Oct 5th', 'Nov 14']
    },
    {
      'questionText': 'Who\'s your favorite person?',
      'answers': ['Abhinai', 'Abhinai', 'Abhinai', 'Abhinai']
    },
  ];
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    if (questionIndex < questions.length) {
      print('we have more questions!');
    } else {
      print('your done!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('For my little baby Sani ❤'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(),
      ),
    );
  }
}
