import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  const Botoes({required this.resp, required this.txt,super.key});

  final VoidCallback resp;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: resp,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 243, 33, 33),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child:  Text(txt, style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
