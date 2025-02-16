import 'package:web/web.dart';


import 'rosco.dart';


void main(){
  var rosco = Rosco();
  // print('start');
  var primeraDefinicion = rosco.obtenerPregunta();
  print(primeraDefinicion.definicion);
  // console.log(document.querySelector('#pregunta')!);
  // final idPregunta = document.querySelector('#pregunta')!;
  // idPregunta.text =' primeraDefinicion.definicion';
  document.querySelector("#pregunta")!.text = primeraDefinicion.definicion;
}