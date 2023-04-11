import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
class _denemeState extends State<deneme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                    enlargeCenterPage:true,
                    height: 720,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 1),
                    reverse: false,
                    aspectRatio: 5.0,
                  ),
                  itemCount: imagelist.length,
                  itemBuilder: (context,i,id){
                    return GestureDetector(
                      child: Container(
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white),
                        ),
                        child: ClipRRect(borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            imagelist[i],
                            width:500 ,
                            fit: BoxFit.cover,
                          ),),
                      ),
                      onTap: (){
                        var assets= imagelist[i];
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
