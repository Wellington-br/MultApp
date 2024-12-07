import 'package:flutter/material.dart';
import 'dart:math';

class FrasedoDia extends StatelessWidget {
  final List<String> phrases = [
    "Acredite nos seus sonhos!",
    "Hoje é um ótimo dia para começar algo novo.",
    "Cada esforço te leva mais perto do sucesso.",
    "Seja positivo e confiante!",
    "Nunca desista, pois grandes coisas levam tempo."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Frases do Dia')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final randomPhrase = phrases[Random().nextInt(phrases.length)];
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Text(randomPhrase, style: TextStyle(fontSize: 18)),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          },
          child: Text('Gerar Frase'),
        ),
      ),
    );
  }
}
