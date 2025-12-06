import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.respostas, this.reiniciar, {super.key});

  final List respostas;
  final void Function() reiniciar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
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

          Text(
            'Reiniciar',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
