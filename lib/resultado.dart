import 'package:flutter/material.dart';
import './itens.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.respostas, this.reiniciar, {super.key});

  final List respostas;
  final void Function() reiniciar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(   // ✅ ADICIONADO
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Respostas",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 203, 152, 1),
              ),
            ),

            const SizedBox(height: 20),

            ...respostas.map(
              (resp) => Itens(
                pergunta: resp['pergunta'],
                resposta: resp['resposta'],
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: reiniciar,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 40),
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text(
                'Reiniciar',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
