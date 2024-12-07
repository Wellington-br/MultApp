import 'package:flutter/material.dart';
import 'dart:math'; // Import necessário para selecionar palavras aleatórias

class Adivinhacao extends StatefulWidget {
  @override
  _AdivinhacaoState createState() => _AdivinhacaoState();
}

class _AdivinhacaoState extends State<Adivinhacao> {
  // Lista de palavras para adivinhação
  final List<String> words = [
    "FLUTTER",
    "CASA",
    "ESCOLA",
    "FUTEBOL",
    "PROGRAMA",
    "ATIVIDADE",
  ];

  late String word; // Palavra a ser adivinhada
  List<String> guessedLetters = [];
  int attemptsLeft = 6; // Número máximo de tentativas

  @override
  void initState() {
    super.initState();
    _startNewGame();
  }

  void _startNewGame() {
    setState(() {
      // Seleciona uma palavra aleatória da lista
      word = (words..shuffle()).first.toUpperCase();
      guessedLetters = [];
      attemptsLeft = 6;
    });
  }

  String get hiddenWord {
    return word.split('').map((letter) {
      return guessedLetters.contains(letter) ? letter : '_';
    }).join(' ');
  }

  void guessLetter(String letter) {
    setState(() {
      if (!guessedLetters.contains(letter)) {
        guessedLetters.add(letter);
        if (!word.contains(letter)) {
          attemptsLeft--;
        }
      }
    });
  }

  String get gameStatus {
    if (attemptsLeft == 0) {
      return "Você perdeu! A palavra era $word.";
    } else if (!hiddenWord.contains('_')) {
      return "Parabéns, você ganhou!";
    } else {
      return "Continue tentando!";
    }
  }

  bool get isGameOver {
    return attemptsLeft == 0 || !hiddenWord.contains('_');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jogo da Forca')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Adivinhe a palavra:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              hiddenWord,
              style: TextStyle(fontSize: 32, letterSpacing: 2),
            ),
            SizedBox(height: 20),
            Text(
              'Tentativas restantes: $attemptsLeft',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            if (isGameOver)
              Column(
                children: [
                  Text(
                    gameStatus,
                    style: TextStyle(
                      fontSize: 20,
                      color: gameStatus.contains('Parabéns')
                          ? Colors.green
                          : Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _startNewGame,
                    child: Text('Recomeçar'),
                  ),
                ],
              )
            else
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').map((letter) {
                  bool isGuessed = guessedLetters.contains(letter);
                  return ElevatedButton(
                    onPressed: isGuessed ? null : () => guessLetter(letter),
                    child: Text(letter),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isGuessed ? Colors.grey : Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  );
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }
}
