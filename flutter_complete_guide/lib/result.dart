import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback restartHandler;

  Result(this.totalScore, this.restartHandler);

  String get textResult {
    String result;
    if (totalScore <= 10) {
      result = "We don't match :(";
    } else if (totalScore <= 20) {
      result = "Eh... we kinda match";
    } else {
      result = "Yeahh, we match! :)";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            textResult,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Restart quiz!"),
            onPressed: restartHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
