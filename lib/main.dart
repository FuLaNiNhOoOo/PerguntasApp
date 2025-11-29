import 'package:flutter/material.dart';
import './botoes.dart';

void main() {
  runApp(const PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
  const PerguntasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final perguntas = [
  {
    'pergunta': 'Qual a sua cor favorita?',
    'respostas': ['verde', 'amarelo', 'vermelho', 'Cor dos pôneis malditos'],
  },
  {
    'pergunta': 'Qual o seu animal favorito?',
    'respostas': ['Gato','Cão','Ave','Porco','Perry o ornitorrinco'],
  },
  {
    'pergunta': 'Qual é o seu time?',
    'respostas': ['Palmeiras','Corinthians','São Paulo','Santos','Tabajara FC'],
  },
  {
  'pergunta': 'Qual é o seu anime preferido',
  'respostas': ['Naruto','Demon Slayer','Dragon Ball','xique xique bahia','Dandadan'],
  },

];

  var indicePergunta = 0;

  void responder() {
    setState(() {
      if (indicePergunta < perguntas.length - 1) {
        indicePergunta++;
      } else {
        indicePergunta = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('William', style: TextStyle(fontSize: 30)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 7, 7),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              perguntas[indicePergunta]['pergunta'].toString(),
              style: const TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20,),
           ...((perguntas[indicePergunta]['respostas'] as List<String>)
           .map((textoBootao) => Botoes(resp: responder, txt: textoBootao))
           .toList()
           ),
          ],
        ),
      ),
    );
  }
}
