import 'package:flutter/cupertino.dart';

class BackgroundCustom
 extends StatelessWidget {
  const BackgroundCustom
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        width: double.infinity,
        height: 2500,
        'assets/images/background.jpg'
     );
  }
}