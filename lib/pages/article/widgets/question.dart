import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/apps/utils/constVariable.dart';
import 'package:quiz_app/widgets/button_custom.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: getWidth(context)*0.1,vertical: getHeight(context)*0.2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child:Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(context)*0.05,vertical: getHeight(context)*0.04),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Hãy nhập đáp án câu hỏi bên dưới",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black),
              ),
              const Text(
                textAlign: TextAlign.start,
                "Câu 3/5",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 20,),
              Image.asset(
                'assets/images/question.jpg',
                width: double.infinity,
                height: 200,
              ),
              const Text(
                textAlign: TextAlign.start,
                "Đáp án của bạn",
                style: TextStyle(color: Colors.black),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Nhập câu trả lời của bạn"
                ),
              ),
              SizedBox(height: 20,),
              ButtonCustom(button_title: "Trả lời")
            ],
          ),
        ),
      ),
    );
  }
}