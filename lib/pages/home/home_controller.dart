import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  String textoEmBranco = '';

  String curiosidade =
      'As galáxias estão em movimento, e algumas caminham em direção a outras, o que provavelmente levará a uma colisão. Isso deve ocorrer entre a Via Láctea e a Galáxia de Andrômeda daqui a 5 bilhões de anos!';
  String nomeCuriosidade = 'Colisão de galáxias';

  bool isCuriosidadeChange = false;

  mostrarCuriosidade() {
    isCuriosidadeChange = !isCuriosidadeChange;
    notifyListeners();
  }
}
