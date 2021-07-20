import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    "what's' my fav color?",
    "what's my fav animal",
    "What's my fav tv show",
    "What's my fav movie"
  ];

  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex = questionIndex + 1;
      } else {
        questionIndex = 0;
      }
    });

    print('button pressed $questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Center title"), centerTitle: true),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  questions[questionIndex],
                  style: TextStyle(fontSize: 24),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                            onPressed: answerQuestion, child: Text("Answer 1")),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                            onPressed: answerQuestion, child: Text("Answer 2")),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                            onPressed: answerQuestion, child: Text("Answer 3")),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
