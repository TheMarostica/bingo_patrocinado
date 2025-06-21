import 'package:flutter/material.dart';

class Pedra extends StatefulWidget {
  final String numero;
  bool clicado = false;
  VoidCallback onPressed;

  Pedra({super.key, required this.numero, required this.onPressed, this.clicado = false});

  @override
  State<Pedra> createState() => _PedraState();
}

class _PedraState extends State<Pedra> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        widget.onPressed();
      },

      style: ButtonStyle(
        alignment: Alignment.center,
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (widget.clicado) {
            return Colors.black;
          }
          return const Color.fromARGB(255, 255, 251, 216);
        }),
      ),
      child: Text(
        widget.numero,
        style: TextStyle(
          color: widget.clicado ? Colors.white : Colors.black,
          fontSize: 45.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
