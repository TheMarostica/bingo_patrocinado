import 'package:bingo_patrocinado/telas/patrocinio_tela.dart';
import 'package:flutter/material.dart';

class Pedra extends StatefulWidget {
  final String numero;
  const Pedra({super.key, required this.numero});

  @override
  State<Pedra> createState() => _PedraState();
}

class _PedraState extends State<Pedra> {
  bool clicado = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PatrocinioTela(numero: widget.numero),
          ),
        );
        setState(() {
          clicado = true;
        });
      },

      style: ButtonStyle(
        alignment: Alignment.center,
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (clicado) {
            return Colors.black;
          }
          return const Color.fromARGB(255, 255, 251, 216);
        }),
      ),
      child: Text(
        widget.numero,
        style: TextStyle(
          color: clicado ? Colors.white : Colors.black,
          fontSize: 45.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
