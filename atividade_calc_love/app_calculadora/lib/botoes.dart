// import 'dart:html';
// import 'package:app_calculadora/calcular.dart';
// import 'package:flutter/material.dart';
// import 'screen.dart';

// double tamanhoFonte = 32;
// Color cinza = Color(0xFFA7A7A7);
// Color cinzaEscuro = Color(0xFF413F3F);
// Color amarelo = Color(0xFFFF9503);
// Color c = const Color(0xFF42A5F5);
// Calcular calc = Calcular();

// // BOTÃO REDONDO
// Widget botaoRedondo({required String tecla, cor = Colors.blueGrey}) {
//   return ElevatedButton(
//     onPressed: () {
//       calc.calcular(tecla);
//     },
//     child: Text(
//       tecla,
//       style: TextStyle(fontSize: tamanhoFonte),
//     ),
//     style: ButtonStyle(
//       backgroundColor: MaterialStateProperty.all(cor),
//       minimumSize: MaterialStateProperty.all(
//         Size(80, 80),
//       ),

//       /*padding: MaterialStateProperty.all(
//         EdgeInsets.all(35),
//       ),*/
//       shape: MaterialStateProperty.all(
//         CircleBorder(),
//       ),
//       /*minimumSize: MaterialStateProperty.all(
//                             Size(75, 75),
//                           ),*/
//     ),
//   );
// }

// //BOTÃO ARREDONDADO
// Widget botaoArredondado({required String tecla, Color cor = Colors.blueGrey}) {
//   return ElevatedButton(
//     onPressed: () {},
//     style: ElevatedButton.styleFrom(
//         padding: EdgeInsets.symmetric(horizontal: 77.0, vertical: 13.0),
//         shape: StadiumBorder(),
//         backgroundColor: cor),
//     child: Text(
//       tecla,
//       style: TextStyle(color: Colors.white, fontSize: tamanhoFonte),
//     ),
//   );
// }
