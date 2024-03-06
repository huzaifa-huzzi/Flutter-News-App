import 'package:dart_news_app/utills/RoundButton.dart';
import 'package:flutter/material.dart';


class ContainerThree extends StatelessWidget {
  final String title;
  final VoidCallback onpress;

  const ContainerThree({super.key, required this.title, required this.onpress});

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
              child:  Image(image: AssetImage('assets/images/tayyab.jpg'))),
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
                    SizedBox(width: 60,),
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