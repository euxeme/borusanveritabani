/*
  /$$$$$$                                                     /$$$$$$         
 /$$__  $$                                                   /$$__  $$        
| $$  \ $$ /$$$$$$$   /$$$$$$   /$$$$$$$  /$$$$$$  /$$   /$$| $$  \__//$$$$$$ 
| $$$$$$$$| $$__  $$ |____  $$ /$$_____/ |____  $$| $$  | $$| $$$$   |____  $$
| $$__  $$| $$  \ $$  /$$$$$$$|  $$$$$$   /$$$$$$$| $$  | $$| $$_/    /$$$$$$$
| $$  | $$| $$  | $$ /$$__  $$ \____  $$ /$$__  $$| $$  | $$| $$     /$$__  $$
| $$  | $$| $$  | $$|  $$$$$$$ /$$$$$$$/|  $$$$$$$|  $$$$$$$| $$    |  $$$$$$$
|__/  |__/|__/  |__/ \_______/|_______/  \_______/ \____  $$|__/     \_______/
                                                   /$$  | $$                  
                                                  |  $$$$$$/                  
                                                   \______/                   
*/

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:proje/drawer.dart';
import 'admin.dart';
import 'ayarlar.dart';
import 'main.dart';  

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: const AyarlarDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                showDialog(context: context, builder: (BuildContext context)=> Text(cekilenVeri.value));
                /*
                   cekilenVeri = await veritabaniRef.get();

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                final ref = FirebaseDatabase.instance.ref("bildirim/");
                final snapshot = await ref.child('1/').get();
                if (snapshot.exists) {
                  print(snapshot.value['']);
                  //veri.add(snapshot.value.toString());
                } else {
                  print('No data available.');
                } */
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

               

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                setState(() {});
              },
              icon: const Icon(Icons.restart_alt))
        ],
        title: const Text("Borusan Bildirim Uygulaması"),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
          itemCount: veri.length,
          itemBuilder: (BuildContext context, int index) {
            return Bildirim(
              index: index,
            );
          }),
          
    );
  }
}