/*
  /$$$$$$        /$$               /$$          
 /$$__  $$      | $$              |__/          
| $$  \ $$  /$$$$$$$ /$$$$$$/$$$$  /$$ /$$$$$$$ 
| $$$$$$$$ /$$__  $$| $$_  $$_  $$| $$| $$__  $$
| $$__  $$| $$  | $$| $$ \ $$ \ $$| $$| $$  \ $$
| $$  | $$| $$  | $$| $$ | $$ | $$| $$| $$  | $$
| $$  | $$|  $$$$$$$| $$ | $$ | $$| $$| $$  | $$
|__/  |__/ \_______/|__/ |__/ |__/|__/|__/  |__/
                                                
*/

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'anasayfa.dart';
import 'main.dart';


TextEditingController konu = TextEditingController(); 

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const AnaSayfa()));
        }),
        backgroundColor: Colors.deepOrange,
        title: const Text("Admin"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: veriGonder,
                decoration: const InputDecoration(label: Text("Başlık"),border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: bildirimSayisi,
                decoration: const InputDecoration(label: Text("Sayi"),border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: konu,
                decoration: const InputDecoration(label: Text("Konu"),border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                  onPressed: () async {
                    if (veriGonder.text != "") {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Başarıyla Gönderildi")));
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                      DatabaseReference ref = FirebaseDatabase.instance
                          .ref("bildirim/${bildirimSayisi.text}");
                      await ref.set({
                        "konu": konu.text,
                        "baslık": veriGonder.text,
                      });
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    }
                  },
                  icon: const Text("Gönder"),
                  label: const Icon(Icons.send))
            ],
          ),
        ),
      ),
    );
  }
}
