import 'dart:convert';

class Produto {
  String id;
  String descricao;
  double preco;
  int quantidade;

  Produto({
    required this.id,
    required this.descricao,
    required this.preco,
    required this.quantidade,
  });

  Produto copyWith({
    String? id,
    String? descricao,
    double? preco,
    int? quantidade,
  }) {
    return Produto(
      id: id ?? this.id,
      descricao: descricao ?? this.descricao,
      preco: preco ?? this.preco,
      quantidade: quantidade ?? this.quantidade,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'descricao': descricao,
      'preco': preco,
      'quantidade': quantidade,
    };
  }

  factory Produto.fromMap(Map<String, dynamic> map) {
    return Produto(
      id: map['id'],
      descricao: map['descricao'],
      preco: map['preco'],
      quantidade: map['quantidade'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Produto.fromJson(String source) =>
      Produto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Produto(id: $id, descricao: $descricao, preco: $preco, quantidade: $quantidade)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Produto &&
        other.id == id &&
        other.descricao == descricao &&
        other.preco == preco &&
        other.quantidade == quantidade;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        descricao.hashCode ^
        preco.hashCode ^
        quantidade.hashCode;
  }
}
