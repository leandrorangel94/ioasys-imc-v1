import 'package:flutter/material.dart';
import 'package:ioasys_imc/pages/calculator_page.dart';
import 'package:ioasys_imc/pages/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ioasys IMC',
      theme: ThemeData(
        primaryColor: const Color(0xFFC1007E),
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/calculator': (context) => const CalculatorPage(),
      },
    );
  }
}
