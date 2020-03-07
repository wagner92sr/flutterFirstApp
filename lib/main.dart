import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada ++;      
    });
    print(_perguntaSelecionada);
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
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ) ,
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            )
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