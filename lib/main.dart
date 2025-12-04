import 'package:flutter/material.dart';
import './dados.dart';
import './lista_perguntas.dart';
//import './resultado.dart';

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
  final dados = perguntasRespostas; // lista importada de dados.dart
  final List<Map<String, String>> respostas = []; // lista vazia para armazenar respostas
  var indicePergunta = 0;

  void responder(String r) {
    final perguntaAtual = dados[indicePergunta].pergunta;
    setState(() {
      respostas.add({'pergunta': perguntaAtual, 'resposta': r});
      indicePergunta++;
    });
  }

  void reiniciar() {
    setState(() {
      indicePergunta = 0;
      respostas.clear();
    });
  }

  bool get temPergunta {
    return indicePergunta < dados.length;
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
        padding: const EdgeInsets.all(20),
        child: temPergunta
            ? ListaPerguntas(
                indicePergunta: indicePergunta,
                perguntas: dados,
                responder: responder,
              )
            : null //Resultado(respostas: respostas, reiniciar: reiniciar),
      ),
    );
  }
}

