import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  const Result(this.totalScore, this.resetHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Text(
            'You have answered questions correctly.',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: resetHandler, child: const Text('restart'))
        ],
      ),
    );
  }
}
