import 'package:flutter/material.dart';
import 'package:global/componentes/button_default.dart';
import 'package:global/componentes/input_form.dart';
import 'package:global/componentes/page_pattern.dart';
import 'package:global/model/passageiro_model.dart';
import 'package:global/pages/lista/lista_passageiro_controller.dart';

class ListaPassageiro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListaPassageiro();
  }
}

class _ListaPassageiro extends State<ListaPassageiro> {
  final controller = ListaController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  addPassageiro({required String nome}) {
    setState(() {
      controller.ListaPassageiros.insert(
        0,
        PassageiroModel(
          nome: nome,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PagePattern(
      title: 'Lista de Passageiros',
      body: Column(
        children: [
          Text(
            'Confirme sua viajem',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          InputForm(
              label: 'Digite seu nome:',
              userInputController: controller.passageiroController),
          const SizedBox(height: 15),
          ButtonDefault(
            buttonText: 'Confirmar',
            onPressed: () {
              addPassageiro(nome: controller.passageiroController.text);
            },
          ),
          const SizedBox(height: 15),
          ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 15);
            },
            shrinkWrap: true,
            itemCount: controller.ListaPassageiros.length,
            itemBuilder: (context, index) {
              var listItem = controller.ListaPassageiros[index];
              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    print(listItem.nome);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 96, 92, 83), width: 1),
                    ),
                    child: Row(
                      children: [Text(listItem.nome!)],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
