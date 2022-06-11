import 'package:flutter/material.dart';
import 'package:global/componentes/button_default.dart';
import 'package:global/componentes/page_pattern.dart';
import 'package:global/pages/roteiro/roteiro_controller.dart';

class Roteiro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Roteiro();
  }
}

class _Roteiro extends State<Roteiro> {
  final controller = RoteiroController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return PagePattern(
        title: "Roteiro",
        body: Center(
          child: Column(
            children: [
              Text(
                'Roteiro da Viagem para Marte',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text(
                'A Tourism on Mars Company quer te proporcionar a viajem da sua vida, então confira o roteiro!',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
              Text(
                'Ver roteiro',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 40),
              ButtonDefault(
                  onPressed: () {
                    controller.mostrarRoteiro();
                  },
                  buttonText: 'Conferir Roteiro'),
              SizedBox(height: 30),
              Text(
                controller.isRoteiroChange
                    ? controller.roteiroViagem
                    : controller.textoEmBranco,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ));
  }
}
