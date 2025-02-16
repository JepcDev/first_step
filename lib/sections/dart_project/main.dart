import 'package:first_step/sections/dart_project/rosco.dart';

import 'dart:html';

void main(){
  var rosco = Rosco();
  var primeraDefinicion = rosco.obtenerPregunta();

  querySelector("#pregunta")!.text = primeraDefinicion.definicion;

}