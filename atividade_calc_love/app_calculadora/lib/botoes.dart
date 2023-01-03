/* import 'package:flutter/material.dart';
import 'screen.dart';
import 'calcular.dart';

class Botao extends StatefulWidget {
  const Botao({super.key});

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          calc.calcular(tecla);
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(cor),
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
}
 */