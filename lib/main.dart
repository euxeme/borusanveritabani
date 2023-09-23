/*
 /$$      /$$           /$$          
| $$$    /$$$          |__/          
| $$$$  /$$$$  /$$$$$$  /$$ /$$$$$$$ 
| $$ $$/$$ $$ |____  $$| $$| $$__  $$
| $$  $$$| $$  /$$$$$$$| $$| $$  \ $$
| $$\  $ | $$ /$$__  $$| $$| $$  | $$
| $$ \/  | $$|  $$$$$$$| $$| $$  | $$
|__/     |__/ \_______/|__/|__/  |__/
                                     
*/

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

import 'anasayfa.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: karanlikTema ? ThemeData.dark() : ThemeData.light(),
        home: const AnaSayfa(),
      ),
    );
  }
}

///////////////////////////////////////////////////////

List<String> veri = [
  //"Nitelikli Otistik Aranıyor",
];

bool karanlikTema = false;

bool isChecked = false;

final databaseRef = FirebaseDatabase.instance.ref();





final veritabaniRef = FirebaseDatabase.instance.ref("bildirim/1/baslık");
var cekilenVeri;




///////////////////////////////////////////////////////
class Bildirim extends StatefulWidget {
  Bildirim({super.key, required this.index});

  int index = 0;
  bool gorunurluk = true;


  
  @override
  State<Bildirim> createState() => _BildirimState();
}

class _BildirimState extends State<Bildirim> {

  @override
  void initState() async {
    super.initState();


               cekilenVeri = await veritabaniRef.get();
    
    
  }

  
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.gorunurluk,
      child: Card(
        child: ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CardBilgi(bilgiIndex: widget.index)));
          },
          title: Text(cekilenVeri.value),
          trailing: IconButton(
              onPressed: () {
                widget.gorunurluk = false;
                setState(() {});
              },
              icon: const Icon(Icons.delete)),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////



/////////////////////////////////////////////



///////////////////////////////////////////////



///////////////////////////////////////////////

TextEditingController veriGonder = TextEditingController();
TextEditingController bildirimSayisi = TextEditingController();


class CardBilgi extends StatelessWidget {
  CardBilgi({super.key, required this.bilgiIndex});

  int bilgiIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(veri[bilgiIndex]),
      ),
    );
  }
}
