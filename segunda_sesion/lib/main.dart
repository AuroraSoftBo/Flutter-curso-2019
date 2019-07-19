import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            //primarySwatch: Colors.red,
            ),
        home: Home());
  }
}

//comando para stateless: stle

class Home extends StatelessWidget {
  //Column, Row, listView....
  //prioridad en alineaciones
  //Column = colecciones en vertical
  //Row = colecciones en horizontal

  Widget cuerpo() {
    return Column(
      //alineaciones
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Text("El contador tiene el valor de:"), Numero()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("Titulo de la aplicacion"),
      ),
      body: Center(
        child: cuerpo(),
      ),
    );
  }
}

//comando para stateful: stful

class Numero extends StatefulWidget {
  @override
  _NumeroState createState() => _NumeroState();
}

class _NumeroState extends State<Numero> {
  int _contador = 0;

  //hexadecimal en colores
  Color _colorBoton = const Color(0xFFB74093);

  bool _sw = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "$_contador",
          style: TextStyle(
              //fontSize: num(), int, double
              fontSize: 48,
              //color: Colors.green[800] //50,100,200,300,....,900
              color: _colorBoton),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Center(
            child: Text(
              "El contador excedio su numero",
              style: TextStyle(color: _sw ? Colors.black : Colors.transparent),
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              _contador++;
              if (_contador >= 30) {
                _sw = true;
                _contador = 30;
              }
            });
          },
          color: Colors.green,
          child: Text(
            'Incrementar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

//objetos
// caracteristicas y metodos
//Widget: cualquier ilustracion en pantalla
/// texto, imagen, boton
/// caracteristicas: color, tamaño (dimensiones: alto y ancho), tamaño de la fuente,.....
///
/// label text (entrada de texto)
/// metodos: onChange(), onPressed()
