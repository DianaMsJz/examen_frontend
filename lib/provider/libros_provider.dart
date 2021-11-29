import 'dart:convert';

import 'package:examen_frontend/api/environment.dart';
import 'package:examen_frontend/models/libro.dart';
import 'package:examen_frontend/models/response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LibrosProvider {
  String _url = Environment.EXAMEN;
  String _api = '/api/libros';
  BuildContext context;

  Future init(BuildContext context) {
    this.context = context;
  }

  Future<Response> create(Libro libro) async {
    try {
      Uri url = Uri.http(_url, '$_api/create');
      String bodyParams =
          json.encode(libro); //recibe todos los parametros de user
      Map<String, String> headers = {'Content-type': 'application/json'};
      final res = await http.post(url, headers: headers, body: bodyParams);
      final data = json.decode(
          res.body); //data almacena la respuesta (message,error,success)
      Response responseApi = Response.fromJson(data);
      return responseApi;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<Response> obtener(Libro libro) async {
    try {
      Uri url = Uri.http(_url, '$_api/getAll');
      Map<String, String> headers = {'Content-type': 'application/json'};
      final res = await http.get(url, headers: headers);
      final data = json.decode(
          res.body); //data almacena la respuesta (message,error,success)
      Response responseApi = Response.fromJson(data);
      return responseApi;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
