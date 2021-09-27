import 'dart:convert';

class Mercado {
  String id;
  String nome;
  String cidade;
  String bairro;

  Mercado({
    required this.id,
    required this.nome,
    required this.cidade,
    required this.bairro,
  });

  Mercado copyWith({
    String? id,
    String? nome,
    String? cidade,
    String? bairro,
  }) {
    return Mercado(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cidade: cidade ?? this.cidade,
      bairro: bairro ?? this.bairro,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'cidade': cidade,
      'bairro': bairro,
    };
  }

  factory Mercado.fromMap(Map<String, dynamic> map) {
    return Mercado(
      id: map['id'],
      nome: map['nome'],
      cidade: map['cidade'],
      bairro: map['bairro'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Mercado.fromJson(String source) =>
      Mercado.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Mercado(id: $id, nome: $nome, cidade: $cidade, bairro: $bairro)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Mercado &&
        other.id == id &&
        other.nome == nome &&
        other.cidade == cidade &&
        other.bairro == bairro;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ cidade.hashCode ^ bairro.hashCode;
  }
}
