import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../functions/product.dart';

class deneme extends StatefulWidget {
  const deneme({Key? key}) : super(key: key);

  @override
  State<deneme> createState() => _denemeState();
}

final List<String> imagelist=[
      'assets/images/jean/1.jpg',
      'assets/images/jean/2.jpg',
      'assets/images/jean/3.jpg',
      'assets/images/jean/4.jpg',
      'assets/images/jean/5.jpg',
      'assets/images/jean/6.jpg',
];
const String featur="Ekran boyutu 24 inç\nEkran yenileme hızı 120 Hz\nEkran teknolojisi OLED\n20 W hızlı şarj\nApla A15 bionic\n128 GB depolama\nSuya ve toza dayanıklılık";
    
class _denemeState extends State<deneme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(featur,textAlign: TextAlign.center,),
        ]
        ),
      ),
    );
  }
}
