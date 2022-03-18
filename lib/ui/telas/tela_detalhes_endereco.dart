import 'package:cadastro_contatos/model/endereco.dart';
import 'package:flutter/material.dart';

class TelaDetalhesEndereco extends StatelessWidget {
  final Endereco endereco;

  const TelaDetalhesEndereco({Key? key, required this.endereco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                endereco.nome,
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                'Telefone: ${endereco.telefone}',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 4.0),
              Text(
                'Endereço: ${endereco.logradouro}, ${endereco.numero}',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 4.0),
              Text(
                '${endereco.cidade}, ${endereco.estado}',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 4.0),
              Text(
                'CEP: ${endereco.cep}',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
