import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PatrocinioTela extends StatelessWidget {
  final String numero;

  const PatrocinioTela({super.key, required this.numero});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(size.height);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 124, 134),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 124, 134),
        toolbarHeight: 35,
      ),
      body: KeyboardListener(
        focusNode: FocusNode(),
        autofocus: true,

         onKeyEvent: (event) {
          if (event is KeyDownEvent && event.logicalKey == LogicalKeyboardKey.backspace && !event.synthesized) {
            Navigator.pop(context);
          }
        },
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/$numero.jpeg',
                width: 900,
                height: 800,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset('logos/paroquia.png', width: 900, height: 800,);
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Número',
                    style: TextStyle(fontSize: 100, color: Colors.black),
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 251, 216),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Text(numero, style: TextStyle(fontSize: 250)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
