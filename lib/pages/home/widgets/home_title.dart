import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/apps/utils/constVariable.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Let's Play QuizGame",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          SizedBox(height: getHeight(context) * 0.02,),
          const Text('Bộ câu hỏi trắc nghiệm độc đáo',style: 
          TextStyle(
              color: Colors.white
          ),),
          SizedBox(height: getHeight(context) * 0.06,),
      ],
    );
  }
}