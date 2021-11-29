import 'package:examen_frontend/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterController _con = new RegisterController();

  @override
  void initState() {
    //inicializar el controlador
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de libros'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buttonLista(),
              Padding(padding: EdgeInsets.only(top: 60)),
              _textFieldTitulo(),
              _textFieldAutor(),
              _textFieldGenero(),
              _textFieldEdicion(),
              _buttonRegister()
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldTitulo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.blueGrey[100], borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: _con.tituloController,
        decoration: InputDecoration(
            hintText: 'Título del libro',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            prefixIcon: Icon(
              Icons.book,
              color: Colors.indigo,
            )),
      ),
    );
  }

  Widget _textFieldAutor() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.blueGrey[100], borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: _con.autorController,
        decoration: InputDecoration(
            hintText: 'Nombre del autor',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.indigo,
            )),
      ),
    );
  }

  Widget _textFieldEdicion() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.blueGrey[100], borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: _con.edicionController,
        decoration: InputDecoration(
            hintText: 'Edición',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            prefixIcon: Icon(
              Icons.edit,
              color: Colors.indigo,
            )),
      ),
    );
  }

  Widget _textFieldGenero() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.blueGrey[100], borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: _con.generoController,
        decoration: InputDecoration(
            hintText: 'Género',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            prefixIcon: Icon(
              Icons.insert_emoticon,
              color: Colors.indigo,
            )),
      ),
    );
  }

  Widget _buttonLista() {
    return Container(
      width: 60,
      margin: EdgeInsets.only(top: 10, left: 160),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, 'lista'),
        child: Text(
          'lista',
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 10)),
      ),
    );
  }

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
        onPressed: _con.register,
        child: Text(
          'Registrar libro',
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }
}
