import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:semana3-flutter-1/Models/articulo.model.dart';

class DetallePage extends StatelessWidget {
  final Articulo articulo;
  const DetallePage({Key key, this.articulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(articulo.title)),

    );
  }
}