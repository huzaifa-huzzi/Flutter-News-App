import 'package:dart_news_app/resources/Colors.dart';
import 'package:dart_news_app/resources/Font.dart';
import 'package:dart_news_app/services/splashServices.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Services splashscreen = Services();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreen.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                const  Image(image: AssetImage('assets/images/globe pic.jpeg',)),
              const SizedBox(height: 20,),
              GradientText(
                'Flutter News',
                style: const  TextStyle(
                  fontSize: 40.0,
                  fontFamily: AppFonts.robotoBold
                ),
                colors:const  [
                  Colors.orangeAccent,
                  Colors.red,
                  Colors.purpleAccent,
                ],
              ),
           const  Padding(
                padding: EdgeInsets.only(left: 41),
                child:  Center(child:   Text('Lorem Ipsum es simplemente el texto de relleno \n         de las imprentas y archivos de texto',style: TextStyle(fontFamily:AppFonts.robotoRegular,color: AppColors.simpleColor,fontSize: 15),))),
             const SizedBox(height: 30,),
              Padding(
                padding:const  EdgeInsets.only(top: 200),
                child: LoadingAnimationWidget.waveDots(
                 color:Colors.purpleAccent,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
