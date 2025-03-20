import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card en Fila'),
          backgroundColor: Color(0xFFFFB6C1),
        ),
        body: Center(
          child: MyCard(),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final List<Map<String, String>> datos = [
    {"etiqueta": "Dato 1", "valor": "Valor 1"},
    {"etiqueta": "Dato 2", "valor": "Valor 2"},
    {"etiqueta": "Dato 3", "valor": "Valor 3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 300,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFFADD8E6),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: datos.map((dato) => _buildDato(dato)).toList(),
        ),
      ),
    );
  }

  Widget _buildDato(Map<String, String> dato) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dato["etiqueta"]!,
          style: TextStyle(fontSize: 14.0, color: Colors.black),
        ),
        Text(
          dato["valor"]!,
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
