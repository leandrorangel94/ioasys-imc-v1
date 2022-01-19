import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  String _textInfo = "Informe seus dados";

  void _calculaImc() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double imc = weight / (height * height);

    if (imc < 18.6) {
      _textInfo = "Você está abaixo do peso ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 18.6 && imc < 24.9) {
      _textInfo = "Você está no peso ideal ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 24.9 && imc < 29.9) {
      _textInfo =
          "Você está levemente acima do peso ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 29.9 && imc < 34.9) {
      _textInfo =
          "Você está com obesidade grau I ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 34.9 && imc < 39.9) {
      _textInfo =
          "Você está com obesidade grau II ${imc.toStringAsPrecision(2)}";
    } else {
      _textInfo =
          "Você está com obesidade grau III ${imc.toStringAsPrecision(2)}";
    }
  }

  void _resetFields() {
    heightController.clear();
    weightController.clear();
    _textInfo = "Informe seus dados";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        leading: Image.asset(
          'assets/images/logo_home.png',
        ),
        title: const Text('Calculadora IMC'),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                _resetFields();
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 36),
              child: Image.asset('assets/images/user.png'),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: weightController,
                decoration: const InputDecoration(hintText: 'Peso (Kg)'),
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: heightController,
                decoration: const InputDecoration(hintText: 'Altura (cm)'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 33.5),
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _calculaImc();
                  });
                },
                child: Text('Calcular'.toUpperCase()),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Text(_textInfo),
          ],
        ),
      ),
    );
  }
}
