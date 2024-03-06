import 'package:dart_news_app/Routes/RoutesInitialize.dart';
import 'package:dart_news_app/Routes/RoutesName.dart';
import 'package:dart_news_app/resources/Colors.dart';
import 'package:dart_news_app/resources/Font.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter News',
      theme: ThemeData(
        primaryColor:AppColors.primaryColor,
        appBarTheme:const  AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 22,fontFamily:AppFonts.robotoBlack,color: AppColors.textColor),
        ),
        useMaterial3: true,
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.white,brightness: Brightness.light),
      ),
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );

  }
}
