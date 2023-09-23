/*
 /$$$$$$$                                                      
| $$__  $$                                                     
| $$  \ $$  /$$$$$$  /$$$$$$  /$$  /$$  /$$  /$$$$$$   /$$$$$$ 
| $$  | $$ /$$__  $$|____  $$| $$ | $$ | $$ /$$__  $$ /$$__  $$
| $$  | $$| $$  \__/ /$$$$$$$| $$ | $$ | $$| $$$$$$$$| $$  \__/
| $$  | $$| $$      /$$__  $$| $$ | $$ | $$| $$_____/| $$      
| $$$$$$$/| $$     |  $$$$$$$|  $$$$$/$$$$/|  $$$$$$$| $$      
|_______/ |__/      \_______/ \_____/\___/  \_______/|__/      
                                                               
*/


import 'package:flutter/material.dart';
import 'package:proje/admin.dart';

class AyarlarDrawer extends StatelessWidget {
  const AyarlarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 200,
              color: Colors.deepOrange,
              child: const Image(image: AssetImage("images/borusanlogo.png")),
            ),
            SizedBox(
              height: 200,
              child: Column(
                children: [
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Placeholder())));
                        },
                        icon: const Icon(Icons.settings),
                        label: const Text("Ayarlar")),
                  ),
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Placeholder())));
                        },
                        icon: const Icon(Icons.info),
                        label: const Text("Hakkında")),
                  ),
                  Expanded(
                    child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Admin())));
                        },
                        icon: const Icon(Icons.hourglass_empty_sharp),
                        label: const Text("Admin")),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}

