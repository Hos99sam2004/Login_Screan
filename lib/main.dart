import 'package:flutter/material.dart';
import 'package:flutter_application_6/Login_Screan.dart';

void main(List<String> args) {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScrean(),
    );
  }
}
