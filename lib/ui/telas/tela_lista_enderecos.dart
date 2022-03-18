import 'package:cadastro_contatos/model/endereco.dart';
import 'package:cadastro_contatos/model/enderecos_data.dart';
import 'package:cadastro_contatos/ui/telas/tela_cadastro_enderecos.dart';
import 'package:cadastro_contatos/ui/telas/tela_detalhes_endereco.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      body: Consumer<EnderecosData>(
        builder: (context, enderecoData, _) {
          return ListView.builder(
            itemCount: enderecoData.quantidadeEnderecos,
            itemBuilder: (context, index) {
              return ItemEndereco(
                endereco: enderecoData.enderecos[index],
              );
            },
          );
        },
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
  final Endereco endereco;

  const ItemEndereco({
    Key? key,
    required this.endereco,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(endereco.nome),
        subtitle: Text(endereco.logradouro),
        tileColor: Colors.white12,
        trailing: Icon(Icons.home),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(8),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      TelaDetalhesEndereco(endereco: endereco)));
        },
      ),
    );
  }
}
