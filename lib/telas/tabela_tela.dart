import 'package:bingo_patrocinado/widgets/pedra.dart';
import 'package:flutter/material.dart';

class TabelaTela extends StatefulWidget {
  const TabelaTela({super.key});

  @override
  State<TabelaTela> createState() => _TabelaTelaState();
}

class _TabelaTelaState extends State<TabelaTela> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 55, 62),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(225, 63, 97, 113),
        leading: const SizedBox(),
        leadingWidth: 100,
        toolbarHeight: 150,
        actions: [
          Image.asset('logos/', height: 100),
          const SizedBox(width: 10),
          Image.asset('logos/', height: 100),
          const SizedBox(width: 30),
        ],
        title: const Row(
          children: [
            Text(
              'Bingo | ',
              style: TextStyle(
                color: Color.fromARGB(225, 214, 200, 147),
                fontSize: 60,
              ),
            ),
            Text(
              'Patrocinado',
              style: TextStyle(
                color: Color.fromARGB(225, 214, 200, 147),
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.0)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: GridView.count(
                padding: const EdgeInsets.all(10.0),
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
                crossAxisCount: 13,
                children: <Widget>[
                  for (int i = 1; i <= 75; i++)
                    Pedra(numero: i.toString().padLeft(2, '0')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
