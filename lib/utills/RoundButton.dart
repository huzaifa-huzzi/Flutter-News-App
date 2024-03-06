import 'package:dart_news_app/resources/Font.dart';
import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {
  const RoundButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child:const  Center(child: Text('Read More',style: TextStyle(fontFamily: AppFonts.robotoBold,color: Colors.white),),),
    );
  }
}
