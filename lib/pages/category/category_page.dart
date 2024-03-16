import 'package:flutter/material.dart';
import 'package:quiz_app/apps/utils/constVariable.dart';
import 'package:quiz_app/widgets/background_custom.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCustom(),
          SafeArea(
            child: Center(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: paddingCustom(context)),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  //tỷ lệ ngang/dọc
                  childAspectRatio: 3 / 2
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.primaries[index],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.symmetric(horizontal: getWidth(context)*0.01,vertical: getHeight(context)*0.008),
                    child: Align(child: Text('Item $index'),),
                  );
                },
              ),
            ),
          ),
        ],
        
      ),
    );
  }
}