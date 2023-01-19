// import 'package:dio/dio.dart';
import 'quiz.dart';
import 'package:flutter/material.dart';
import 'result.dart';

var questions = [
  {
    'questionText': 'question1',
    'answers': [
      {'choice': 'answer1', 'score': 1},
      {'choice': 'answer2', 'score': 0},
      {'choice': 'answer3', 'score': 0},
      {'choice': 'answer4', 'score': 0},
    ]
  },
  {
    'questionText': 'question2',
    'answers': [
      {'choice': 'answer1', 'score': 1},
      {'choice': 'answer2', 'score': 0},
      {'choice': 'answer3', 'score': 0},
      {'choice': 'answer4', 'score': 0},
    ]
  },
  {
    'questionText': 'question3',
    'answers': [
      {'choice': 'answer1', 'score': 1},
      {'choice': 'answer2', 'score': 0},
      {'choice': 'answer3', 'score': 0},
      {'choice': 'answer4', 'score': 0},
    ]
  },
];

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void resetHandler() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void questionAnswer(int score) {
    totalScore += score;
    setState(() => questionIndex++);
    print(totalScore);
    // print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my app"),
        ),
        body: questionIndex < questions.length
            ? Quiz(questionIndex, questionAnswer, questions)
            : Result(totalScore, resetHandler),
      ),
    );
  }
}

// void fetchData() async {
//   var dio = Dio();
//   var res = await dio.get('https://opentdb.com/api.php?amount=10');
// }
