import 'package:flutter/material.dart';

void main() {
  runApp(Examen3());
}

class Examen3 extends StatelessWidget {
  const Examen3({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Parcial #1",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Parcial #3"),
        ),
        body: appBody());
  }
}

Widget appBody() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/img/fondo1.jpeg'), fit: BoxFit.cover)),
    child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              data(),
              cedula(),
              nombre(),
              apellidos(),
              fechanac(),
              sexo(),
              tipo(),
              usuario(),
              botonContinuar(),
              botonCancelar()
            ],
          ),
        )),
  );
}

Widget data() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 3),
      child: Column(children: <Widget>[
        Icon(Icons.person, color: Colors.white, size: 50),
        Text(
          '',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(
          '',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text('PERSONAL DATA',
            style: TextStyle(color: Colors.white, fontSize: 24))
      ]));
}
//ahora es el DUI
Widget cedula() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      decoration: const InputDecoration(
          filled: true,
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Icon(Icons.label),
          ),
          hintText: 'Cedula',
          fillColor: Colors.white),
    ),
  );
}

Widget nombre() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      decoration: const InputDecoration(
          filled: true,
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Icon(Icons.label),
          ),
          hintText: 'Nombre',
          fillColor: Colors.white),
    ),
  );
}

Widget apellidos() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      decoration: const InputDecoration(
          filled: true,
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Icon(Icons.label),
          ),
          hintText: 'Apellidos',
          fillColor: Colors.white),
    ),
  );
}

Widget fechanac() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: 1,
      decoration: const InputDecoration(
          filled: true,
          prefixIcon: Padding(
              padding: EdgeInsets.only(top: 0),
              child: Icon(
                Icons.label,
              )),
          hintText: 'Fecha de nacimiento (dia/mes/anio)',
          fillColor: Colors.white),
    ),
  );
}

Widget sexo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      decoration: const InputDecoration(
          filled: true,
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Icon(Icons.label),
          ),
          hintText: 'Sexo',
          fillColor: Colors.white),
    ),
  );
}

Widget tipo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      decoration: const InputDecoration(
          filled: true,
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Icon(Icons.label),
          ),
          hintText: 'Tipo',
          fillColor: Colors.white),
    ),
  );
}

Widget usuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      decoration: const InputDecoration(
          filled: true,
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Icon(Icons.label),
          ),
          hintText: 'Usuario',
          fillColor: Colors.white),
    ),
  );
}
//guardar reserva y continuar
Widget botonContinuar() {
  return RaisedButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 125, vertical: 8),
      onPressed: () {},
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20)),
      child: Text(
        "Continuar con reserva",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ));
}

Widget botonCancelar() {
  return RaisedButton(
      color: Colors.greenAccent,
      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 8),
      onPressed: () {},
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(20)),
      child: Text(
        "Cancelar proceso",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ));
}
