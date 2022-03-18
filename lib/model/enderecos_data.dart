import 'package:cadastro_contatos/model/endereco.dart';
import 'package:flutter/cupertino.dart';

class EnderecosData extends ChangeNotifier {
  List<Endereco> listaEnderecos = [];

  void definirLista(List<Endereco> lista) {
    listaEnderecos = lista;
    notifyListeners();
  }
}
