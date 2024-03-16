import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/pages/home/widgets/home_dropdown.dart';
import 'package:quiz_app/pages/home/widgets/home_title.dart';
import 'package:quiz_app/widgets/background_custom.dart';
import 'package:quiz_app/widgets/button_custom.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    //Lấy size của thiết bị
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCustom(),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.08),
              child: Column(
                //main là trục chính VD: Column thì là dọc
                mainAxisAlignment: MainAxisAlignment.center,
                //cross là trục phụ
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeTitle(),
                  const HomeDropdown(),
                  ButtonCustom(button_title: 'Bắt đầu trải nghiệm')
                ],
              ),
            ),
          )
    
        ],
      ),
    );
  }
}