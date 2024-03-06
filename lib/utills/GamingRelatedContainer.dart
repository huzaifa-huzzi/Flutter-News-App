import 'package:dart_news_app/utills/RoundButton.dart';
import 'package:flutter/material.dart';



class GamingRelatedContainer extends StatelessWidget {
  final String title,image;
  final VoidCallback onpress;

  const GamingRelatedContainer({super.key, required this.title, required this.onpress,required this.image});

  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white,
      elevation: 5,
      child: Row(
        children: [

          Container(
          height: 250,
          width: 130,
          child:  Padding(
              padding:const  EdgeInsets.only(left: 20,bottom: 20),
              child:  Image(image: AssetImage(image))),
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
