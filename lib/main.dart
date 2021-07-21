import 'package:flutter/material.dart';

import 'question.dart';
import 'buttons.dart';

void main() => runApp(MyApp());

var questions = [
  {
    'questionText': "What's' my fav color?",
    'answerText': ['Red', 'White', "Green", "Blue"]
  },
  {
    'questionText': "What's my fav animal?",
    'answerText': ['Dog', 'Cat', "Cow", "Horse"]
  },
  {
    'questionText': "What's my fav movie?",
    'answerText': ['Avengers', 'Superman', "MI", "Fast & Furious"]
  },
];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });

    print('button pressed $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Center title"), centerTitle: true),
        body: _questionIndex < questions.length
            ? Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Question(questions[_questionIndex]["questionText"]),
                    ...(questions[_questionIndex]["answerText"] as List<String>)
                        .map((e) {
                      return MyButton(
                          buttonText: e,
                          onPressed: answerQuestion,
                          buttonBackgroudColor: Colors.amber);
                    }).toList()
                  ],
                ))
            : Center(child: Text("You did it."),),
      ),
    );
  }
}
