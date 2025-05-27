import 'package:flutter/material.dart';

class PatrocinioTela extends StatelessWidget {
  final String numero;

  const PatrocinioTela({super.key, required this.numero});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;

    double heightImage;

    if (screenHeight > 800) {
      heightImage = 800;
    } else {
      heightImage = 500;
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 55, 62),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/$numero.jpeg', height: heightImage),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Número: ',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 251, 216),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(numero, style: TextStyle(fontSize: 30)),
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
