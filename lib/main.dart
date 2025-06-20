import 'package:bingo_patrocinado/telas/tabela_tela.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bingo',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 37, 55, 62),

        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(225, 63, 97, 113),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.0)),
          ),
          titleSpacing: 100,
          titleTextStyle: TextStyle(
            color: Color.fromARGB(225, 214, 200, 147),
            fontSize: 60,
          ),
          actionsIconTheme: IconThemeData(color: Colors.black, size: 50),
          actionsPadding: EdgeInsets.fromLTRB(30, 15, 30, 0),
        ),
      ),
      home: const TabelaTela(),
    );
  }
}
