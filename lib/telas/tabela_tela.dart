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
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        double topTabela;
        double bottomTabela;

        double widthLogo;
        double heightLogo;

        if (screenWidth == 1920 && screenHeight == 1080) {
          topTabela = 80;
          bottomTabela = 100;

          widthLogo = 200;
          heightLogo = 100;
        } else {
          topTabela = 20;
          bottomTabela = 30;

          widthLogo = 200;
          heightLogo = 100;
        }

        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 37, 55, 62),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(225, 63, 97, 113),
            leading: SizedBox(),
            leadingWidth: 100,
            title: Text(
              'Bingo',
              style: TextStyle(
                color: Color.fromARGB(225, 214, 200, 147),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50.0),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, topTabela, 10, bottomTabela),
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GridView.count(
                    padding: EdgeInsets.all(10.0),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                    crossAxisCount: 15,
                    childAspectRatio: 1.0,
                    children: <Widget>[
                      for (int i = 1; i <= 90; i++)
                        Pedra(numero: i.toString().padLeft(2, '0')),
                    ],
                  ),
                ),
              ),

              // ACRESCENTAR LOGO
              // Stack(
              //   alignment: Alignment.bottomRight,
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(30),
              //         ),
              //       ),
              //       width: widthLogo,
              //       height: heightLogo,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [
              //           Image.asset('logos/', height: 100),
              //           SizedBox(width: 10),
              //           Image.asset('logos/', height: 100),
              //           SizedBox(width: 5),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }
}
