import 'package:flutter/material.dart';
import 'dart:math';

class CaraouCoroa extends StatefulWidget {
  @override
  _CaraouCoroaState createState() => _CaraouCoroaState();
}

class _CaraouCoroaState extends State<CaraouCoroa> {
  final List<String> options = ['Cara', 'Coroa'];
  String userChoice = '';
  String computerChoice = '';
  String result = '';

  void flipCoin(String userSelected) {
    final random = Random();
    String computerSelected = options[random.nextInt(2)];
    setState(() {
      userChoice = userSelected;
      computerChoice = computerSelected;
      result = determineWinner(userSelected, computerSelected);
    });
  }

  String determineWinner(String user, String computer) {
    if (user == computer) {
      return 'Parabéns, você acertou!';
    } else {
      return 'Que pena, você errou!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cara ou Coroa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Escolha Cara ou Coroa:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: options.map((option) {
                return ElevatedButton(
                  onPressed: () => flipCoin(option),
                  child: Text(option),
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
                    'Resultado: $computerChoice',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    result,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: result == 'Parabéns, você acertou!'
                          ? Colors.green
                          : Colors.red,
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
