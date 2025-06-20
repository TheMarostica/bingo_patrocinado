
import 'package:bingo_patrocinado/telas/patrocinio_tela.dart';
import 'package:bingo_patrocinado/widgets/pedra.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TabelaTela extends StatefulWidget {
  const TabelaTela({super.key});

  @override
  State<TabelaTela> createState() => _TabelaTelaState();
}

class _TabelaTelaState extends State<TabelaTela> {
  String _entradaNumero = "";

  FocusNode focus = FocusNode();

  List<String> numerosPedrasAbertas = [];

  // valores padrões
  String _nomeCartela = "Cartela";
  Color _corTextoAppBar = Color.fromARGB(225, 214, 200, 147);
  Color _backgroundColorAppBar = const Color.fromARGB(225, 63, 97, 113);
  Color _backgroundColor = const Color.fromARGB(255, 37, 55, 62);

  void _mudarCor(String nome, Color cor, bool isTextoClaro) {
    setState(() {
      isTextoClaro ? _corTextoAppBar = Color.fromARGB(225, 214, 200, 147) : _corTextoAppBar = Colors.black;
      _nomeCartela = "Cartela $nome";
      _backgroundColorAppBar = cor;
      if (nome == "Branca") {
        _backgroundColor = Colors.black12;
      } else {
        _backgroundColor = cor.withAlpha(100);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _backgroundColorAppBar,
        toolbarHeight: 150,
        actions: [
          // Image.asset('logos/', height: 100),
          // Image.asset('logos/', height: 100),
          IconButton(
            onPressed: () => {
              setState(() {
                numerosPedrasAbertas.clear();
                _corTextoAppBar = Color.fromARGB(225, 214, 200, 147);
                _nomeCartela = "Cartela";
                _backgroundColorAppBar = const Color.fromARGB(225, 63, 97, 113);
                _backgroundColor = const Color.fromARGB(255, 37, 55, 62);
              })
            },
            icon: Icon(Icons.clear),
          ),
        ],
        title: Row(
          children: [
            Text('Bingo | ',
              style: TextStyle(
                  color: _corTextoAppBar,
              ),
            ),
            Text(_nomeCartela,
              style: TextStyle(
                color: _corTextoAppBar,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: KeyboardListener(
        autofocus: true,
        focusNode: focus,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 15,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GridView.count(
                  padding: const EdgeInsets.all(10.0),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                  crossAxisCount: 13,
                  children: <Widget> [
                    for (int i = 1; i <= 75; i++)
                      Pedra(numero: i.toString().padLeft(2, '0'), 
                        onPressed: () => {
                          setState(() {
                            if (numerosPedrasAbertas.contains(i.toString())) {numerosPedrasAbertas.remove(i.toString());}
                            else {
                              numerosPedrasAbertas.add(i.toString());
                              abrirPedra(i.toString().padLeft(2, '0'));
                            }
                          })
                        },
                        clicado: numerosPedrasAbertas.contains(i.toString())
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _mudarCor("Amarela", Colors.yellow, false);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const CircleBorder(),
                          backgroundColor: Colors.yellow,
                          padding: const EdgeInsets.all(10) // tamanho do botão
                        ),
                        child: Text(''),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _mudarCor("Azul", Colors.blue, true);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const CircleBorder(),
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.all(10) // tamanho do botão
                        ),
                        child: Text(''),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _mudarCor("Bege", Color.fromARGB(255, 218, 200, 179), false);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const CircleBorder(),
                          backgroundColor: Color.fromARGB(255, 218, 200, 179),
                          padding: const EdgeInsets.all(10) // tamanho do botão

                        ),
                        child: const Text(''),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _mudarCor("Branca", Colors.white, false);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const CircleBorder(),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(10) // tamanho do botão

                        ),
                        child: const Text(''),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _mudarCor("Rosa", Colors.pink, true);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const CircleBorder(),
                          backgroundColor: Colors.pink,
                          padding: const EdgeInsets.all(10) // tamanho do botão

                        ),
                        child: const Text(''),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _mudarCor("Verde", Colors.green, true);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const CircleBorder(),
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.all(10) // tamanho do botão
                        ),
                        child: const Text(''),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _mudarCor("Vermelha", Colors.red, true);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const CircleBorder(),
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.all(10) // tamanho do botão

                        ),
                        child: const Text(''),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        _entradaNumero,
                        style: TextStyle(fontSize: 18, color: Color.fromRGBO(127, 127, 127, 1))
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        onKeyEvent: (event) {
          if (event is KeyDownEvent) {
            if (event.character != null &&
                event.character!.isNotEmpty &&
                int.tryParse(event.character!) != null)
            {
              if (_entradaNumero.length < 2) {
                setState(() {
                  _entradaNumero += event.character!;
                });
              }
            } else if (event.logicalKey == LogicalKeyboardKey.backspace && !event.synthesized){
              setState(() {
                _entradaNumero = _entradaNumero.characters.skipLast(1).toString();
              });
            } else if ((event.logicalKey == LogicalKeyboardKey.enter || event.physicalKey == LogicalKeyboardKey.numpadEnter) && !event.synthesized) {
              final num = _entradaNumero.length == 1 ? "0$_entradaNumero" : _entradaNumero;
              int numInt = int.parse(num);

              if (numInt > 75) {
                setState(() {
                  _entradaNumero = "inválido";
                  Future.delayed(Duration(milliseconds: 200), (){
                    setState(() {
                      _entradaNumero = "";
                    });
                  });
                });
              }

              if (numInt <= 75) {
                setState(() {
                  numerosPedrasAbertas.add(_entradaNumero);
                  _entradaNumero = "";
                });
                abrirPedra(num); 
              }
            }
          }
        },
      ),
    );
  }

  void abrirPedra(String numero) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PatrocinioTela(numero: numero),
      ),
    );
  }
}
