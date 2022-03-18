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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tela Cadastro'),
        ),
        body: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Nome',
              ),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Telefone',
              ),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'CEP',
              ),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Logradouro',
              ),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Numero',
              ),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Bairro',
              ),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Complemento',
              ),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Cidade',
              ),
              keyboardType: TextInputType.text,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Estado',
              ),
              keyboardType: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}

//Telefone deve conter 14 caracteres 84 988232989
//Logradouro, no minimo 10 e no maximo 100
//CEP 8 caracteres