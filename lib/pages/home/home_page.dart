import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var _language = ['Tiếng Việt', 'English', 'Chinese', 'Korean'];

  @override
  Widget build(BuildContext context) {
    //Lấy size của thiết bị
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity,
            height: 2500,
            'assets/images/background.jpg'
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.08),
              child: Column(
                //main là trục chính VD: Column thì là dọc
                mainAxisAlignment: MainAxisAlignment.center,
                //cross là trục phụ
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Let's Play QuizGame",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: size.height * 0.02,),
                  const Text('Bộ câu hỏi trắc nghiệm độc đáo',style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(height: size.height * 0.06,),
                  DropdownButton( 
                    isExpanded: true,
                    isDense: false,
                    hint: const Text("Chọn ngôn ngữ của bạn",style: TextStyle(
                      color: Colors.white
                  ),),
                    items: _language.map((String items) { 
                        return DropdownMenuItem( 
                          value: items, 
                          child: Text(items), 
                        ); 
                      }).toList(), 
                      
                    onChanged: (String? newValue) {  
                        
                    }, 
                  ), 
                  SizedBox(height: size.height * 0.06,),
                  Material(
                    //Làm 2 dòng dưới để khi bấm không bị hiện cái ô vuông mờ
                    clipBehavior: Clip.hardEdge,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: InkWell(
                      onTap: (){
                        print('object');
                      },
                      child: Ink(
                        padding: EdgeInsets.symmetric(vertical: size.height*0.013),
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
                  )
                ],
              ),
            ),
          )
    
        ],
      ),
    );
  }
}