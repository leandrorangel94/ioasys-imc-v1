import 'package:flutter/material.dart';
import 'package:ioasys_imc/pages/login_page/widgets/custom_elevated_button.dart';
import 'package:ioasys_imc/pages/login_page/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/images/logo_ioasys.png'),
              const Padding(padding: EdgeInsets.only(top: 130)),
              const Text(
                'Seja bem-vindo!',
                style: TextStyle(fontSize: 31, color: Colors.white),
              ),
              const Text(
                'Calculadora IMC',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 65),
              const CustomTextField(
                hintText: 'usuário',
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hintText: 'senha',
                obscureText: true,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/calculator');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
