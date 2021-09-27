import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'produto.dart';

class Lista {
  String id;
  String idMercado;
  DateTime data;
  bool isOpen;
  List<Produto> produtos;

  Lista({
    required this.id,
    required this.idMercado,
    required this.data,
    required this.isOpen,
    required this.produtos,
  });

  Lista copyWith({
    String? id,
    String? idMercado,
    DateTime? data,
    bool? isOpen,
    List<Produto>? produtos,
  }) {
    return Lista(
      id: id ?? this.id,
      idMercado: idMercado ?? this.idMercado,
      data: data ?? this.data,
      isOpen: isOpen ?? this.isOpen,
      produtos: produtos ?? this.produtos,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'idMercado': idMercado,
      'data': data.millisecondsSinceEpoch,
      'isOpen': isOpen,
      'produtos': produtos.map((x) => x.toMap()).toList(),
    };
  }

  factory Lista.fromMap(Map<String, dynamic> map) {
    return Lista(
      id: map['id'],
      idMercado: map['idMercado'],
      data: DateTime.fromMillisecondsSinceEpoch(map['data']),
      isOpen: map['isOpen'],
      produtos:
          List<Produto>.from(map['produtos']?.map((x) => Produto.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Lista.fromJson(String source) => Lista.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Lista(id: $id, idMercado: $idMercado, data: $data, isOpen: $isOpen, produtos: $produtos)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Lista &&
        other.id == id &&
        other.idMercado == idMercado &&
        other.data == data &&
        other.isOpen == isOpen &&
        listEquals(other.produtos, produtos);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        idMercado.hashCode ^
        data.hashCode ^
        isOpen.hashCode ^
        produtos.hashCode;
  }
}
