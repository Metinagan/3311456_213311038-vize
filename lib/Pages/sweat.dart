import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../shared/custom_theme.dart';
import 'man.dart';

class sweat extends StatefulWidget {
  const sweat({Key? key}) : super(key: key);

  @override
  State<sweat> createState() => _sweatState();
}

class _sweatState extends State<sweat> {
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
    'assets/images/sweat/1.jpg',
    'assets/images/sweat/2.jpg',
    'assets/images/sweat/3.jpg',
    'assets/images/sweat/4.jpg',
    'assets/images/sweat/5.jpg',
    'assets/images/sweat/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: theme(),
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
                                builder: (context) => const man()),)
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 20),
                        Text("Mankenin üzerindeki ürün 32 bedendir.",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Ürünümüz Pamukpolyester B kalite kumaştan üretilmiştir.",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Ürünümüz hafif Şardonlu ve terletmez",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Modelin Ölçüleri: S Beden En : 54 cm Boy : 65 cm ",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20),
                        Text("Kesim: Oversize",style: TextStyle(fontSize: 15),),

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
