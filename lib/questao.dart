import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;

  Questao(this.texto);//construtor, seta o texto recebido por parametro

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}