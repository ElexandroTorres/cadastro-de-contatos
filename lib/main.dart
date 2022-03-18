import 'package:cadastro_contatos/ui/telas/tela_cadastro_enderecos.dart';
import 'package:cadastro_contatos/ui/telas/tela_lista_enderecos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const CadastroContatos());
}

class CadastroContatos extends StatelessWidget {
  const CadastroContatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro Contatos',
      home: TelaListaEnderecos(),
    );
  }
}
