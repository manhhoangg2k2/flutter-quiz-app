import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/apps/utils/constVariable.dart';

class HomeDropdown extends StatelessWidget {
  const HomeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton( 
          isExpanded: true,
          isDense: false,
          hint: const Text("Chọn ngôn ngữ của bạn",style: TextStyle(
            color: Colors.white
        ),),
          items: ['Tiếng Việt', 'English', 'Chinese', 'Korean'].map((String items) { 
              return DropdownMenuItem( 
                value: items, 
                child: Text(items), 
              ); 
            }).toList(), 
            
          onChanged: (String? newValue) {  
              
          }, 
        ), 
        SizedBox(height: getHeight(context) * 0.06,),
      ],
    );
  }
}