import 'package:flutter/material.dart';
import 'package:flutter_app/InstrucoesControle.dart';
import 'package:flutter_app/Recursividade.dart';
import 'package:flutter_app/TiposDados.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.black
    ),
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trabalho de LP"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TiposDados()));
              }, style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),child: Text("tipos aloc memoria", style: TextStyle(color: Colors.white, fontSize: 18),)), SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InstrucoesControle()));
              }, style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),child: Text("instrucoes de controle", style: TextStyle(color: Colors.white, fontSize: 18),)), SizedBox (
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Recursividade()));
              }, style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))),
                  child: Text("instrucoes de controle", style: TextStyle(color: Colors.white, fontSize: 18),)), SizedBox (
                height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
