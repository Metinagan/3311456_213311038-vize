import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopping/Pages/asus.dart';


import 'apple.dart';
import 'categories.dart';

class monitors extends StatefulWidget {
  const monitors({Key? key}) : super(key: key);

  @override
  State<monitors> createState() => _monitorsState();
}
final List<String> imagelist=[
  'assets/images/monitors/r1.png',
  'assets/images/monitors/r2.png',
  'assets/images/monitors/r3.png',
  'assets/images/monitors/r4.png',
];

class _monitorsState extends State<monitors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.grey,Colors.grey,Colors.black]
              )),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(shape: BoxShape.circle,),
                    child: IconButton(icon: const Icon(
                        Icons.arrow_back_ios_sharp,size: 30),
                        onPressed: () =>
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const categories()),)
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height:180,
                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                          enlargeCenterPage:true,
                          height: 360,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          reverse: false,
                          aspectRatio: 5.0,
                        ),
                        itemCount: imagelist.length,
                        itemBuilder: (context,i,id){
                          return GestureDetector(
                            child: Container(
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.transparent),
                              ),
                              child: ClipRRect(borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  imagelist[i],
                                  width:240 ,
                                  height: 360,
                                  fit: BoxFit.cover,
                                ),),
                            ),
                            onTap: (){
                              var assets= imagelist[i];
                            },
                          );
                        }),

                  ),
                  Container(
                    width:200,
                    child: const
                    Text("Asus Monitör",
                      textAlign: TextAlign.left,maxLines: 5,
                      style: TextStyle(fontSize: 20),),


                  ),
                  Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.white12),
                    child:
                    IconButton(icon: const Icon(
                        Icons.arrow_forward_ios),
                        onPressed: () =>
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const asus()),)),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
