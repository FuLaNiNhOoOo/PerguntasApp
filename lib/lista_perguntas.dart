import 'package:flutter/material.dart';
import './pergunta_resposta.dart';
import './botoes.dart';

class ListaPerguntas extends StatelessWidget {
  final int indicePergunta;
  final List<PerguntaRespostas> perguntas;
  final void Function(String) responder;

  const ListaPerguntas({
    super.key,
    required this.indicePergunta,
    required this.perguntas,
    required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    final perguntaAtual = perguntas[indicePergunta];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          perguntaAtual.pergunta,
          style: const TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),

        // Aqui aparecem os botões
        ...perguntaAtual.respostas.map(
          (resp) => Botoes(
            txt: resp,
            resp: () => responder(resp),
          ),
        ),
      ],
    );
  }
}