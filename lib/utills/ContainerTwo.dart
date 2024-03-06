import 'package:dart_news_app/resources/Font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class ContainerTwo extends StatelessWidget {
  const ContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 400,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
        colors: [ Colors.orangeAccent,
        Colors.red,
        Colors.purpleAccent,],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const  Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text('Flutter News',style: TextStyle(fontSize: 40,fontFamily: AppFonts.robotoBold,color: Colors.white),)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos.',style: TextStyle(fontSize: 12,fontFamily: AppFonts.robotoRegular,color: Colors.white),)),
        ],
      ),
    );
  }
}
