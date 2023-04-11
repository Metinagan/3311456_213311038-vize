import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'women.dart';


class palto extends StatefulWidget {
  const palto({Key? key}) : super(key: key);

  @override
  State<palto> createState() => _paltoState();
}

class _paltoState extends State<palto> {
  int _number=0;
  void _addnumber(){
    setState(() {
      _number++;
    });
  }
  void _subnumber(){
    setState(() {
      if(_number>0){
        _number--;
      }
    });
  }
  final List<String> imagelist=[
  'assets/images/palto/1.jpeg',
  'assets/images/palto/2.jpeg',
  'assets/images/palto/3.jpeg',
  'assets/images/palto/4.jpeg',
  'assets/images/palto/5.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.black,Colors.grey]
              )),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children:[
                  IconButton(icon: const Icon(
                      Icons.arrow_back_ios_sharp,size: 30,color: Colors.white,),
                      onPressed: () =>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const women()),)
                  ),
                  CarouselSlider.builder(
                      options: CarouselOptions(
                        enlargeCenterPage:true,
                        height: 480,
                        autoPlay: false,
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
                              border: Border.all(color: Colors.white),
                            ),
                            child: ClipRRect(borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                imagelist[i],
                                width:320 ,
                                height: 480,
                                fit: BoxFit.cover,
                              ),),
                          ),
                          onTap: (){
                            var assets= imagelist[i];
                          },
                        );
                      }),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.arrow_downward_outlined,size: 40,),
                      Text("Detaylı bilgi",style: TextStyle(fontSize: 20),),
                      Icon(Icons.arrow_downward_outlined,size:40),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10,left: 5,right: 5,bottom: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(height: 20),
                        Text("Model Bilgileri",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                        Text("1.70 cm 53 kg.",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Göğüs: 85 cm, Bel: 62 cm, Basen: 93 cm",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("ÜRÜN ÖZELLİKLERİ",style: TextStyle(fontSize: 20),),
                        SizedBox(height: 20),
                        Text("Boy:115 cm",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Göğüs Eni :50 cm ",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Omuz:37 cm",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Kol boyu:60 cm",style: TextStyle(fontSize: 15),),

                      ],
                    ),
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(icon: const Icon(
                          Icons.remove_circle_outlined),
                        onPressed: () =>_subnumber(),
                      ),
                      const SizedBox(width: 10),
                      Text('$_number',style: Theme.of(context).textTheme.headlineMedium,),
                      const SizedBox(width: 10),
                      IconButton(icon: const Icon(
                          Icons.add_circle_outlined),
                          onPressed: (){
                            return _addnumber();
                          }
                      ),
                      const SizedBox(width: 30),
                      const Text("Sepete Ekle", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  const SizedBox(height: 100),

                ],
              ),
            ),
          ),
        )
    );
  }
}
