import 'package:dart_news_app/Routes/RoutesName.dart';
import 'package:dart_news_app/View/Home_Screen/Home_Screen.dart';
import 'package:dart_news_app/View/Splash/Splash_Screen.dart';
import 'package:dart_news_app/dashBorad_Screen/dashboard_Screeen.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (BuildContext context) =>const  SplashScreen());

      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (BuildContext context) =>const  HomeScreen());

      case RoutesName.dashboard:
        return MaterialPageRoute(builder: (BuildContext context) =>const  DashBoardScreen());



      default:
        return MaterialPageRoute(builder: (_){
           return const Scaffold(
             body: Center(
               child: Text('No Route Find'),
             ),
           );


        });
    }






  }




}