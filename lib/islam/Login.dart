import 'package:flutter/material.dart';
import 'package:school_mobile_app/islam/body.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const routName = "Login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
