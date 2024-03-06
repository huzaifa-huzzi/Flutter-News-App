import 'package:dart_news_app/resources/Colors.dart';
import 'package:dart_news_app/utills/Container.dart';
import 'package:dart_news_app/utills/ContainerThree.dart';
import 'package:dart_news_app/utills/ContainerTwo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 const  Padding(
                       padding :EdgeInsets.symmetric(horizontal: 20),
                       child: Text('Discover',style: TextStyle(fontSize: 40,color: AppColors.textColor),)),
                 const   Padding(
                       padding: EdgeInsets.symmetric(horizontal: 20),
                       child: Text('Lorem Ipsum es simplemente el texto de relleno.',style: TextStyle(fontSize: 12,color: Colors.grey),)),
                  const   SizedBox(
                     height: 30,
                   ),
                  const  Padding(
                       padding: EdgeInsets.symmetric(horizontal: 20),
                       child: ContainerTwo()),
                 const  SizedBox(
                    height: 30,
                  ),
                const   Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text('Top HeadLines',style:TextStyle(fontSize: 40,color: AppColors.textColor),)),
               const SizedBox(height: 20,),
               Padding(
                 padding:const  EdgeInsets.symmetric(horizontal: 20),
                   child:
                   Container(
                     height: 300,
                     width: 350,
                     child: ListView(
                       children: [
                         Containerone(title: 'Lorem Ipsum ha sido el texto de relleno estándar de las.', onpress: (){}),
                         const SizedBox(height: 20,),
                         ContainerThree(title: 'Lorem Ipsum ha sido el texto de relleno estándar de las.', onpress: (){}),
                       ],
                     ),
                   ),
                 ),


            ]
              ),
        ),
      ),

    );
  }
}

