import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada ++;      
    });
  }

  @override
  Widget build(BuildContext context){

    final List<String> perguntas = [//List<String> nao eh necessario por causa da inferencia de tipo 
      'Qual é o seu nome ?',
      'Qual é a sua cor favorita ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[          
            Questao(perguntas[_perguntaSelecionada]),  
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder)
          ],
        ),
      )
    );
  }
}

class PerguntaApp extends StatefulWidget{
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}