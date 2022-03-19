import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TelaInicial();
  }
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  TextEditingController nomeController = TextEditingController();

  void _calcula() {
    setState(() {
      double n1 = double.parse(_campo().text);

      double exibicaoNome = n1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Somador de números"),
          centerTitle: true,
        ),
        body: _body(),
      ),
    );
  }

  _body() {
    return Container(
      width: double.infinity,
      color: Colors.white10,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _campo(),
          _campo2(),
          _campo3(),
          _button(),
        ],
      ),
    );
  }

  _campo() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          labelText: "Digite o 1° número:",
          labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: nomeController,
    );
  }

  _campo2() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          labelText: "Digite o 2° número:",
          labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: nomeController,
    );
  }

  _campo3() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          labelText: "Digite o 3° número:",
          labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: nomeController,
    );
  }

  _button() {
    return RaisedButton(
      color: Colors.green,
      //onPressed: null,
      //onPressed: () {
      //print("Okay!");
      //},
      onPressed: _calcula,
      child: Text(
        "Calcular",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
