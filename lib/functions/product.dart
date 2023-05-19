import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Pages/categories.dart';

class product extends StatelessWidget {
  product( this.imgl,this.text);

  final List<String> imgl;
  late String text;



  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[
        SizedBox(height: 15),
        IconButton(icon: const Icon(
            Icons.arrow_back_ios_sharp,size: 30),
            onPressed: () =>
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => const categories()),)
        ),
        SizedBox(height: 15),
        CarouselSlider.builder(
            options: CarouselOptions(
              enlargeCenterPage:true,
              height: 480,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 3),
              reverse: false,
              aspectRatio: 5.0,
            ),
            itemCount: imgl.length,
            itemBuilder: (context,i,id){
              return GestureDetector(
                child: Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imgl[i],
                      width:320 ,
                      height: 480,
                      fit: BoxFit.cover,
                    ),),
                ),
                onTap: (){
                  var assets= imgl[i];
                },
              );
            }),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Icon(Icons.arrow_downward_outlined,size: 40,),
            Text("Detaylı bilgi",style: TextStyle(fontSize: 20),),
            Icon(Icons.arrow_downward_outlined,size:40),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
                child: Text(text,textAlign: TextAlign.center,),
            )
          ],
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
