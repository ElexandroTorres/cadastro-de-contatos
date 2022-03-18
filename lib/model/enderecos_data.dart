import 'dart:collection';

import 'package:cadastro_contatos/model/endereco.dart';
import 'package:flutter/cupertino.dart';

class EnderecosData extends ChangeNotifier {
  List<Endereco> _listaEnderecos = [];

  void definirLista(List<Endereco> lista) {
    _listaEnderecos = lista;
    notifyListeners();
  }

  UnmodifiableListView<Endereco> get enderecos {
    return UnmodifiableListView(_listaEnderecos);
  }

  int get quantidadeEnderecos {
    return _listaEnderecos.length;
  }

  void adicionarEndereco(Endereco endereco) {
    _listaEnderecos.add(endereco);
    notifyListeners();
  }
}
