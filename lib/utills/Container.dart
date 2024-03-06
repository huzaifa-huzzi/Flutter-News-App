import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dart_news_app/utills/RoundButton.dart';
import 'package:flutter/widgets.dart';



class Containerone extends StatelessWidget {
  final String title;
  final VoidCallback onpress;

  const Containerone({super.key, required this.title, required this.onpress});

  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white,
      elevation: 5,
      child: Row(
        children: [Container(
            height: 250,
            width: 130,
            child:const  Padding(
                padding: EdgeInsets.only(left: 20),
                child:  Image(image: AssetImage('assets/images/monkey Fever.jpg'))),
          ),
         const  SizedBox(width: 10,),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:const EdgeInsets.only(right: 28,top: 25),
                    child: Text(
                      title,
                      style:const  TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                 const  SizedBox(height: 20,),
                  const  Row(
                    children: [
                      RoundButton(),
                      SizedBox(width: 50,),
                      Icon(Icons.favorite_outline),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}