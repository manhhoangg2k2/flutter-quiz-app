import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/apps/utils/constVariable.dart';

class ButtonCustom extends StatelessWidget {
  final String button_title;

  const ButtonCustom({Key? key, required this.button_title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: InkWell(
        onTap: () {
          print('object');
        },
        child: Ink(
          padding: EdgeInsets.symmetric(vertical: getHeight(context) * 0.013),
          decoration: const BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 11, 247, 136),
                Color.fromARGB(255, 148, 235, 201),
              ],
            ),
          ),
          child: Align(
            child: Text(
              button_title,
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}