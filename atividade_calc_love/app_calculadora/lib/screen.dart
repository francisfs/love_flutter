import 'package:app_calculadora/calcular.dart';
import 'package:flutter/material.dart';

double espacoVertical = 17;
double tamanhoFonte = 32;
Color cinza = const Color(0xFFA7A7A7);
Color cinzaEscuro = const Color(0xFF413F3F);
Color amarelo = const Color(0xFFFF9503);
Color c = const Color(0xFF42A5F5);
Calcular calc = Calcular();

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  /* setFullScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [/*SystemUiOverlay.top,SystemUiOverlay.bottom*/]);
  }
  setFullScreen();
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF000000),
        appBar: AppBar(
          backgroundColor: const Color(0xFF000000),
          title: const Text("Calculadora francis"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 15),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(0.0),
                  ),
                ),
                height: 150, //340
                width: 410, //410
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      numero,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 72,
                      ),
                    ),
                  ],
                ),
              ),

              // COLUNA 1

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      botaoRedondo(tecla: 'AC', cor: Colors.grey),
                      botaoRedondo(tecla: '+/-', cor: Colors.grey),
                      botaoRedondo(tecla: '%', cor: Colors.grey),
                      botaoRedondo(
                        tecla: '÷',
                        cor: const Color(0xFFFF9503),
                      ),
                    ],
                  )
                ],
              ),

              // COLUNA 2
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: espacoVertical)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      botaoRedondo(tecla: '7'),
                      botaoRedondo(tecla: '8'),
                      botaoRedondo(tecla: '9'),
                      botaoRedondo(
                        tecla: 'x',
                        cor: amarelo,
                      ),
                    ],
                  )
                ],
              ),

              // COLUNA 3
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: espacoVertical)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      botaoRedondo(tecla: '4'),
                      botaoRedondo(tecla: '5'),
                      botaoRedondo(tecla: '6'),
                      botaoRedondo(tecla: '-', cor: amarelo),
                    ],
                  )
                ],
              ),

              // COLUNA 4
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: espacoVertical)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      botaoRedondo(tecla: '1'),
                      botaoRedondo(tecla: '2'),
                      botaoRedondo(tecla: '3'),
                      botaoRedondo(tecla: '+', cor: const Color(0xFFFF9503)),
                    ],
                  )
                ],
              ),

              // COLUNA 5
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: espacoVertical)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      botaoArredondado(tecla: '0'),
                      botaoRedondo(tecla: ","),
                      botaoRedondo(tecla: '=', cor: amarelo),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // BOTÃO REDONDO
  Widget botaoRedondo({required String tecla, Color? cor}) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          calc.calcular(tecla);
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(cor ?? cinzaEscuro),
        minimumSize: MaterialStateProperty.all(
          const Size(80, 80),
        ),

        /*padding: MaterialStateProperty.all(
        EdgeInsets.all(35),
      ),*/
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
        /*minimumSize: MaterialStateProperty.all(
                            Size(75, 75),
                          ),*/
      ),
      child: Text(
        tecla,
        style: TextStyle(fontSize: tamanhoFonte),
      ),
    );
  }

//BOTÃO ARREDONDADO
  Widget botaoArredondado(
      {required String tecla, Color cor = Colors.blueGrey}) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          calc.calcular(tecla);
        });
      },
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 77.0, vertical: 19.0),
          shape: const StadiumBorder(),
          backgroundColor: cor),
      child: Text(
        tecla,
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.white, fontSize: tamanhoFonte),
      ),
    );
  }
}
