import 'package:flutter/material.dart';
import 'package:quiz_app/pages/article/widgets/article_head.dart';
import 'package:quiz_app/pages/article/widgets/question.dart';
import 'package:quiz_app/widgets/background_custom.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundCustom(),
          ArticleHead(),
          Question()
        ]
      ),
    );
  }
}