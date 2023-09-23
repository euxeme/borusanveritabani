import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  const Hakkinda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hakkında"),
        backgroundColor: Colors.deepOrange,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Borusan Bildirim Uygulaması", style: TextStyle(fontSize: 30)),
            SizedBox(
              height: 10,
            ),
            Text("Hazırlayan : Keremcem", style: TextStyle(fontSize: 25)),
            Image(
              image: AssetImage("images/chiyopenguin.png"),
              width: 300,
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}