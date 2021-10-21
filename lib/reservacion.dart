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
              cedula()
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