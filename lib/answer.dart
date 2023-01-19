import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});
  final VoidCallback? selectHandler;
  final answer;

  const Answer(this.selectHandler, this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(answer),
      ),
    );
  }
}
