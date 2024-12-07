import 'package:flutter/material.dart';
import 'dart:math';

class Jokenpo extends StatefulWidget {
  @override
  _JokenpoState createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  final List<String> choices = ['Pedra', 'Papel', 'Tesoura'];
  String userChoice = '';
  String computerChoice = '';
  String result = '';

  void play(String userSelected) {
    final random = Random();
    String computerSelected = choices[random.nextInt(3)];
    setState(() {
      userChoice = userSelected;
      computerChoice = computerSelected;
      result = determineWinner(userSelected, computerSelected);
    });
  }

  String determineWinner(String user, String computer) {
    if (user == computer) {
      return 'Empate!';
    } else if ((user == 'Pedra' && computer == 'Tesoura') ||
        (user == 'Papel' && computer == 'Pedra') ||
        (user == 'Tesoura' && computer == 'Papel')) {
      return 'Você venceu!';
    } else {
      return 'Você perdeu!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jokenpô')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Escolha uma opção:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: choices.map((choice) {
                return ElevatedButton(
                  onPressed: () => play(choice),
                  child: Text(choice),
                );
              }).toList(),
            ),
            SizedBox(height: 40),
            if (userChoice.isNotEmpty && computerChoice.isNotEmpty)
              Column(
                children: [
                  Text(
                    'Sua escolha: $userChoice',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Escolha do computador: $computerChoice',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    result,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: result == 'Você venceu!'
                          ? Colors.green
                          : result == 'Você perdeu!'
                              ? Colors.red
                              : Colors.orange,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
