import 'dart:async';

import 'package:dart_news_app/Routes/RoutesName.dart';
import 'package:flutter/material.dart';



class Services{

  void isLogin(BuildContext context) {
     Timer(const Duration(seconds: 4), () {
       Navigator.pushNamed(context, RoutesName.dashboard);
     });
  }




}