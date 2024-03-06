import 'package:dart_news_app/resources/Font.dart';
import 'package:dart_news_app/utills/GamingRelatedContainer.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class GamingScreen extends StatefulWidget {
  const GamingScreen({super.key});

  @override
  State<GamingScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<GamingScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:const  EdgeInsets.only(right: 40),
              child: GradientText(
                'Gaming Related Article',
                style: const  TextStyle(
                    fontSize: 35.0,
                    fontFamily: AppFonts.robotoBold
                ),
                colors:const  [
                  Colors.orangeAccent,
                  Colors.red,
                  Colors.purpleAccent,
                ],
              ),
            ),
              const  Padding(
                 padding: EdgeInsets.only(left: 12),
                 child: Text(
                  'Lorem ipsum dolor sit amet, quis dicta civibus qui no. An nobis laudem salutatus sit, vel volumus accumsan dissentiet et, posse verear evertitur ea cum. Liber maiestatis no qui, vix eu vidisse fabulas, dolore omnium ad usu. Velit posidonium usu ea.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                               ),
               ),
             const SizedBox(
               height: 40,
             ),
            Container(
              height:600,
              width: 400,
              child: ListView(
                children:  [
                   GamingRelatedContainer(title: 'Esports are on head', onpress: (){}, image: 'assets/images/esports.jpg'),
                  const SizedBox(
                    height: 40,
                  ),
                  GamingRelatedContainer(title: 'Microsoft Gaming layoff', onpress: (){}, image: 'assets/images/microsoft pic.jpeg'),
                  const SizedBox(
                    height: 40,
                  ),
                  GamingRelatedContainer(title: 'Meta will let you users Link', onpress: (){}, image: 'assets/images/Meta pics.jpeg'),
                  const SizedBox(
                    height: 40,
                  ),
                  GamingRelatedContainer(title: 'Streamer on the twitch Prime Gaming', onpress: (){}, image: 'assets/images/streamers.jpg'),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
