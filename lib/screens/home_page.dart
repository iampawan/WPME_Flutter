import 'package:flutter/material.dart';
import 'package:flutter_app/screens/quiz.dart';
import 'package:flutter_app/screens/revision.dart';
import 'package:flutter_app/screens/session_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"), //title of toolbar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.green,
              child: Text("Sessions"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SessionPage()),
                );
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text("Revision"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RevisionPage()),
                );
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text("Quiz"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage()),
                );
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text("Book PDF"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SessionPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
