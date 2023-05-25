import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;

    return Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 0, 255, 30)
              : const Color.fromARGB(255, 255, 0, 0),
          borderRadius:BorderRadius.circular(100),
        ),
        child:Text( 
          questionNumber.toString(),
          style:const TextStyle( 
            fontWeight:FontWeight.bold,
            color:Color.fromARGB(255, 2, 9, 50)
          ),
        ),
        );
  }
}
