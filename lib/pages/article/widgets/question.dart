import 'package:flutter/material.dart';
import 'package:quiz_app/apps/utils/constVariable.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: getWidth(context)*0.1,vertical: getHeight(context)*0.25),
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          Text(
            "Hãy nhập đáp án câu hỏi bên dưới",
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}