  import 'package:flutter/material.dart';

  class Contador with ChangeNotifier {
    double valor = 0;
    String nome = '';
    
    void aumentar() {
      valor = valor + 1;
      notifyListeners();
    }

    void diminuir() {
      valor = valor - 1;
      notifyListeners();
    }
    void dobrar(){
      valor = valor *2;
      notifyListeners();
    }
    void metade(){
      valor = valor / 2;
      notifyListeners();
    }
    void mudaNome(novoNome){
      nome = novoNome; 
      notifyListeners();
    }
  }
