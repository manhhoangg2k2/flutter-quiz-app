import 'package:flutter/material.dart';
import 'package:quiz_app/apps/utils/constVariable.dart';

class ArticleHead extends StatelessWidget {
  const ArticleHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getWidth(context)*0.05,vertical: getHeight(context)*0.02),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          Text(
            "Chuỗi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}