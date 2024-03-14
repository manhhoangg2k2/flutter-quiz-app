import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/apps/utils/constVariable.dart';

class ButtonCustom extends StatelessWidget {
  String title;
  ButtonCustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      //Làm 2 dòng dưới để khi bấm không bị hiện cái ô vuông mờ
      clipBehavior: Clip.hardEdge,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: InkWell(
        onTap: (){
          print('object');
        },
        child: Ink(
          padding: EdgeInsets.symmetric(vertical: getHeight(context)*0.013),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 11, 247, 136),
                Color.fromARGB(255, 148, 235, 201),
              ])
          ),
          child: 
          //bọc bằng Align để chữ vào giữa
          const Align(
            child: Text(
              "Bắt đầu trải nghiệm",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}