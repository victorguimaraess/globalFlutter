import 'package:flutter/material.dart';
import 'package:global/model/passageiro_model.dart';

class ListaController extends ChangeNotifier {
  TextEditingController passageiroController = TextEditingController();

  List<PassageiroModel> ListaPassageiros = [
    PassageiroModel(nome: 'Victor Marcello'),
    PassageiroModel(nome: 'Lucas Nobrega'),
    PassageiroModel(nome: 'Fabrício da Silva'),
  ];
}
