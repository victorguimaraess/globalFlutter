import 'package:flutter/material.dart';
import 'package:global/componentes/button_default.dart';
import 'package:global/componentes/input_form.dart';
import 'package:global/componentes/page_pattern.dart';
import 'package:global/pages/home/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PagePattern(
      title: 'Login',
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('lib/images/rick.jpg'), //Logo da empresa
          const SizedBox(height: 70),
          Text(
            'Tourism on Mars Company',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 70),
          InputForm(label: 'E-mail'),
          const SizedBox(height: 10),
          InputForm(label: 'Senha'),
          const SizedBox(height: 40),
          ButtonDefault(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              buttonText: 'Entrar'),
        ]),
      ),
    );
  }
}
