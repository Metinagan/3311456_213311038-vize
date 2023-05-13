import 'package:flutter/material.dart';

import 'LoginPageState.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  late String name;
  late String surname;
  late String mail;
  late String paswd;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: const Text("Üye Ol"),),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Ad
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "İsim",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
                onSaved: (value) {
                 name = value!;
                },
              ),
              const SizedBox(height: 15),
              //Soyad
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "Soyisim",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
                onSaved: (value) {
                  name = value!;
                },
              ),
              const SizedBox(height: 15),
              //e-posta
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "E-posta",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
                onSaved: (value) {
                  name = value!;
                },
              ),
              const SizedBox(height: 15),
              //şifre
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: "Şifre",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder()),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Doldurulması Zorunlu Alan';
                  }return null;
                },
                onSaved: (value) {
                  name = value!;
                },
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                      child: const Text('Giriş Yap'),
                      onPressed: ()=>
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),)
                  ),

                  MaterialButton(
                    child: const Text("Üye Ol"),
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Üyeliğiniz Kabul Edildi')),
                        );
                      }
                      else{

                      }
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
