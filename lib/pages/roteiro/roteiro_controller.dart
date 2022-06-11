import 'package:flutter/material.dart';

class RoteiroController extends ChangeNotifier {
  String textoEmBranco = '';
  String roteiroViagem =
      'Ao chegar em Marte, cada turista terá um drone (tipo Mars Drone da NASA), para explorar o Planeta Vermelho sem sair da segurança da espaçonave. Como esses drones são equipados com duas câmeras fotográficas - uma câmera preto e branco, apontada para o solo, e outra câmera colorida, apontada para o horizonte - os turistas podem tirar quantas fotografias quiserem.';

  bool isRoteiroChange = false;

  mostrarRoteiro() {
    isRoteiroChange = !isRoteiroChange;
    notifyListeners();
  }
}
