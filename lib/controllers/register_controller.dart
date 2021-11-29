import 'dart:convert';

import 'package:examen_frontend/models/libro.dart';
import 'package:examen_frontend/models/response.dart';
import 'package:examen_frontend/provider/libros_provider.dart';
import 'package:flutter/material.dart';

class RegisterController {
  BuildContext context;

  TextEditingController tituloController = new TextEditingController();
  TextEditingController autorController = new TextEditingController();
  TextEditingController generoController = new TextEditingController();
  TextEditingController edicionController = new TextEditingController();

  LibrosProvider librosProvider = new LibrosProvider();

  Future init(BuildContext context) {
    //método que inicializa las variables
    this.context = context;
    librosProvider.init(context);
  }

  void register() async {
    String titulo = tituloController.text;
    String autor = autorController.text;
    String genero = generoController.text;
    int edicion = int.parse(edicionController.text);

    Libro libro = new Libro(
        titulo: titulo, autor: autor, genero: genero, edicion: edicion);

    Response responseApi = await librosProvider.create(
        libro); //se espera la respuesta al mandar la petición para registrar un libro

    print('RESPUESTA: ${responseApi.toJson()}');
  }
}
