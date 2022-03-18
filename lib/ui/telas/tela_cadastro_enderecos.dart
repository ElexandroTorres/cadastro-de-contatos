import 'package:cadastro_contatos/model/endereco.dart';
import 'package:cadastro_contatos/model/enderecos_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class TelaCadastroEnderecos extends StatefulWidget {
  const TelaCadastroEnderecos({Key? key}) : super(key: key);

  @override
  State<TelaCadastroEnderecos> createState() => _TelaCadastroEnderecosState();
}

class _TelaCadastroEnderecosState extends State<TelaCadastroEnderecos> {
  String? _nome;
  String? _telefone;
  String? _cep;
  String? _logradouro;
  String? _numero;
  String? _bairro;
  String? _complemento;
  String? _cidade;
  String? _estado;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'É necessario inserir um nome para o cadastro';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _nome = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o seu nome',
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value!.length < 14) {
                      return 'É necessario inserir um numero de telefone valido';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _telefone = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o numero de telefone',
                    labelText: 'Telefone',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    MaskedInputFormatter('(##)#####-####'),
                  ],
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'É necessario inserir o CEP';
                    } else if (value.length < 8) {
                      return 'Digite um CEP valido';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _cep = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o CEP',
                    labelText: 'CEP',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'É necessario inserir o logradouro';
                    } else if (value.length < 10) {
                      return 'Tamanho minimo de 10 caractres';
                    } else if (value.length > 100) {
                      return 'Tamanho maximo de 100 caracteres';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _logradouro = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o logradouro',
                    labelText: 'Lograadouro',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLength: 100,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'É necessario inserir um numero';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _numero = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o numero',
                    labelText: 'Numero',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'É necessario inserir o nome do bairro';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _bairro = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o nome do bairro',
                    labelText: 'Bairro',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  onSaved: (value) {
                    _complemento = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o complemento',
                    labelText: 'Complemento',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'É necessario inserir o nome da cidade';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _cidade = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o nome da cidade',
                    labelText: 'Cidade',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'É necessario inserir o nome do estado';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _estado = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Digite o nome do estado',
                    labelText: 'Estado',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
                TextButton(
                  onPressed: () {
                    var valido = _formKey.currentState!.validate();
                    if (!valido) {
                      return;
                    }
                    _formKey.currentState!.save();

                    Endereco endereco = Endereco(
                        nome: _nome!,
                        telefone: _telefone!,
                        cep: _cep!,
                        logradouro: _logradouro!,
                        numero: _numero!,
                        bairro: _bairro!,
                        complemento: _complemento!,
                        cidade: _cidade!,
                        estado: _estado!);

                    Provider.of<EnderecosData>(context, listen: false)
                        .adicionarEndereco(endereco);

                    Navigator.pop(context);
                  },
                  child: Text('SALVAR'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
