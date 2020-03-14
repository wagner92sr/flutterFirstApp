import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      //List<String> nao eh necessario por causa da inferencia de tipo
      {
        'texto': 'Qual é a sua cor favorita ?',
        'respostas': ['Amarelo', 'Verde', 'Preto', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito ?',
        'respostas': ['Cachorro', 'Gato', 'Papagaio', 'Elefante'],
      },
      {
        'texto': 'Qual é o seu time ?',
        'respostas': ['Inter', 'Corinthians', 'Grêmio', 'Flamengo'],
      },
    ];

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]['texto']),
          ...respostas.map((t) => Resposta(t, _responder)).toList(),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
