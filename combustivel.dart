import 'package:flutter/material.dart';

class Combustivel extends StatefulWidget {
  @override
  _combustivelState createState() => _combustivelState();
}

class _combustivelState extends State<Combustivel> {
  final TextEditingController alcoholController = TextEditingController();
  final TextEditingController gasolineController = TextEditingController();
  String result = '';

  void calculate() {
    double alcohol = double.tryParse(alcoholController.text) ?? 0;
    double gasoline = double.tryParse(gasolineController.text) ?? 0;

    setState(() {
      if (alcohol == 0 || gasoline == 0) {
        result = 'Por favor, insira valores válidos.';
      } else if ((alcohol / gasoline) <= 0.7) {
        result = 'Abasteça com Álcool.';
      } else {
        result = 'Abasteça com Gasolina.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Escolha do Combustível',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.local_gas_station,
                size: 100,
                color: Colors.blueAccent,
              ),
              SizedBox(height: 20),
              _buildInputField('Preço do Álcool (R\$)', alcoholController),
              SizedBox(height: 20),
              _buildInputField('Preço da Gasolina (R\$)', gasolineController),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: calculate,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Text(
                  'Calcular',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Text(
                result,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: result.contains('Álcool')
                      ? Colors.green
                      : result.contains('Gasolina')
                          ? Colors.red
                          : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 18, color: Colors.blueAccent),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      style: TextStyle(fontSize: 18),
    );
  }
}
