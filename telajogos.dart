import 'package:flutter/material.dart';
import '../games/jokenpo.dart';
import '../games/caraoucoroa.dart';
import '../games/adivinhacao.dart';

class TelaJogos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Jokenpo()),
                );
              },
              child: Text('Jokenpô'),
            ),
            SizedBox(height: 20), // Espaço entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaraouCoroa()),
                );
              },
              child: Text('Cara ou Coroa'),
            ),
            SizedBox(height: 20), // Espaço entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Adivinhacao()),
                );
              },
              child: Text('Adivinhação'),
            ),
          ],
        ),
      ),
    );
  }
}
