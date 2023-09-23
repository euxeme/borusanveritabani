import 'package:flutter/material.dart';

import 'main.dart';

class Ayarlar extends StatefulWidget {
  const Ayarlar({super.key});

  @override
  State<Ayarlar> createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Ayarlar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            karanlikTema
                ? const Text("Tema : Aydınlık")
                : const Text("Tema : Karanlık"),
            Switch(
                value: karanlikTema,
                onChanged: (value) {
                  karanlikTema = !karanlikTema;
                  runApp(const MyApp());
                })
          ],
        ),
      ),
    );
  }
}