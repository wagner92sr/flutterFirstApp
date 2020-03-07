import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp>{
  var perguntaSelecionada = 0;

  void responder(){
    setState(() {
      perguntaSelecionada ++;      
    });
    print(perguntaSelecionada);
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
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ) ,
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            )
          ],
        ),
      )
    );
  }
}

class PerguntaApp extends StatefulWidget{

  PerguntaAppState createState(){
    return PerguntaAppState();
  }


}