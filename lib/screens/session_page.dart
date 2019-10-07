import 'package:flutter/material.dart';

class SessionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sessions"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            RaisedButton(
              color: Colors.green,
              child: Text("1"),
              onPressed: () {},
            ),
            RaisedButton(
              color: Colors.green,
              child: Text("2"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
