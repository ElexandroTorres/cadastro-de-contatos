import 'package:cadastro_contatos/model/endereco.dart';
import 'package:cadastro_contatos/ui/telas/tela_cadastro_enderecos.dart';
import 'package:flutter/material.dart';

class TelaListaEnderecos extends StatefulWidget {
  const TelaListaEnderecos({Key? key}) : super(key: key);

  @override
  State<TelaListaEnderecos> createState() => _TelaListaEnderecosState();
}

class _TelaListaEnderecosState extends State<TelaListaEnderecos> {
  List<Endereco> listaEnderecos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Endereços'),
      ),
      body: ItemEndereco(
        nome: 'Elexandro',
        endereco: 'Rua Santa Rita de Cassia',
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TelaCadastroEnderecos()));
        },
      ),
    );
  }
}

class ItemEndereco extends StatelessWidget {
  final String nome;
  final String endereco;

  const ItemEndereco({
    Key? key,
    required this.nome,
    required this.endereco,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(nome),
        subtitle: Text(endereco),
        tileColor: Colors.white12,
        trailing: Icon(Icons.home),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class ListaEnderecos extends StatelessWidget {
  const ListaEnderecos({
    Key? key,
    required this.listaEnderecos,
  }) : super(key: key);

  final List<Endereco> listaEnderecos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaEnderecos.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.red,
            height: 100,
          ),
        );
      },
    );
  }
}
