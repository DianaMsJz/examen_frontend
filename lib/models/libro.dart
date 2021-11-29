// To parse this JSON data, do
//
//     final libro = libroFromJson(jsonString);

import 'dart:convert';

Libro libroFromJson(String str) => Libro.fromJson(json.decode(str));

String libroToJson(Libro data) => json.encode(data.toJson());

class Libro {
  Libro({
    this.id,
    this.titulo,
    this.autor,
    this.genero,
    this.edicion,
  });

  String id;
  String titulo;
  String autor;
  String genero;
  int edicion;

  factory Libro.fromJson(Map<String, dynamic> json) => Libro(
        id: json["id"],
        titulo: json["titulo"],
        autor: json["autor"],
        genero: json["genero"],
        edicion: json["edicion"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "titulo": titulo,
        "autor": autor,
        "genero": genero,
        "edicion": edicion,
      };
}
