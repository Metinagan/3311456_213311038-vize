import 'package:flutter/material.dart';
import '../shared/custom_theme.dart';
import 'mainmen.dart';
import 'signin.dart';
import 'mainmen.dart';




class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();

}



class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;
  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: theme(),
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Kullanıcı Adı',
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Kullanıcı Adınızı Giriniz';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    username = value!;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Parola',
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Parolanızı Giriniz';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                const SizedBox(height: 12),
                loginButton(),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() =>
      Row(
        children: [
          Expanded(
            child: MaterialButton(
                child: const Text('Kaydol'),
                onPressed: () =>
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => const signin()),)
            ),),
          const SizedBox(width: 12),
          Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState?.save();
                      if (username == 'metin' && password == '123456') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const mainmen(),
                          ),
                        );
                      } else {
                        showDialog(
                            context: context,

                            builder: (BuildContext context) {
                              return const AlertDialog(
                                title: Text('Hata'),
                                content: Text('Giriş Bilgileri Hatalı'),
                              );
                            });
                      }
                    }
                  },
                  child: const Text('Giriş Yap')))
        ],
      );
}

