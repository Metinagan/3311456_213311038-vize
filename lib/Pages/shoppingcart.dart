import 'package:flutter/material.dart';

import '../shared/custom_theme.dart';



class shopcart extends StatefulWidget {
  const shopcart({Key? key}) : super(key: key);

  @override
  State<shopcart> createState() => _shopcartState();
}
List<String> listcart=[];


class _shopcartState extends State<shopcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: theme(),
        child: SafeArea(
          child:
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 100,right: 100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey,
                    ),
                      child: const Text("My Cart",style:TextStyle(fontSize: 80),)),
                ],
              ),
              ListView(


              )
            ],
          ),

          ),
      ),
      );
  }
}
