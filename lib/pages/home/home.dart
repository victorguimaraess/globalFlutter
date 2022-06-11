import 'package:flutter/material.dart';
import 'package:global/componentes/button_default.dart';
import 'package:global/componentes/page_pattern.dart';
import 'package:global/pages/home/home_controller.dart';
import 'package:global/pages/lista/lista_passageiro.dart';
import 'package:global/pages/roteiro/roteiro.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final controller = HomeController();
  Future<void> _mostrarGrupoGlobal(String integrantes) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext conext) {
          return AlertDialog(
            title: Text('Integrantes do Grupo\nSala: 3 SIS'),
            content: SingleChildScrollView(
                child: Container(
              child: Text(integrantes),
            )),
          );
        });
  }

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
        title: "Home",
        body: Center(
          child: Column(
            children: [
              Text(
                'Tourism on Mars Company',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text(
                'Bem vindo ao app da sua emprese de viajem favorita',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
              Text(
                'veja mais sobre a maior aventura da sua vida !',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 35),
              ButtonDefault(
                  onPressed: () {
                    _mostrarGrupoGlobal(
                        'Victor Marcello Guimarães Cordeiro RM: 86391 \nLucas Nóbrega Mansano RM: 85388 \nFabrício da Silva Rodrigues Alves RM: 84729');
                  },
                  buttonText: 'Grupo'),
              SizedBox(height: 35),
              ButtonDefault(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Roteiro()),
                    );
                  },
                  buttonText: 'Roteiro'),
              SizedBox(height: 10),
              ButtonDefault(
                  onPressed: () {
                    controller.mostrarCuriosidade();
                  },
                  buttonText: 'Curiosidade do universo '),
              SizedBox(height: 10),
              ButtonDefault(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListaPassageiro()),
                    );
                  },
                  buttonText: 'Confirmar lista de passageiro'),
              SizedBox(height: 35),
              Text(
                controller.isCuriosidadeChange
                    ? controller.nomeCuriosidade
                    : controller.textoEmBranco,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                controller.isCuriosidadeChange
                    ? controller.curiosidade
                    : controller.textoEmBranco,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ));
  }
}
