class Endereco {
  String nome;
  String telefone;
  String cep;
  String logradouro;
  String numero;
  String bairro;
  String complemento;
  String cidade;
  String estado;

  Endereco({
    required this.nome,
    required this.telefone,
    required this.cep,
    required this.logradouro,
    required this.numero,
    required this.bairro,
    required this.complemento,
    required this.cidade,
    required this.estado,
  });

  @override
  String toString() {
    return 'Endereco(nome: $nome, telefone: $telefone, cep: $cep, logradouro: $logradouro, numero: $numero, bairro: $bairro, complemento: $complemento, cidade: $cidade, estado: $estado)';
  }
}
