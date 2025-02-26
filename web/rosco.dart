import 'dart:collection';

import 'pregunta.dart';
import 'rosco_api.dart';

// Clase del juego del Rosco
class Rosco{
  // List<Pregunta>? roscoPreguntas = [] ;
  ListQueue<Pregunta> roscoPreguntas = ListQueue<Pregunta>();//una lista "Queue" almacena los datos segun como van siendo añadidos a la lista
  List<String> preguntasRespondidas = [];//Almacena todas las pregunta que se respondieron o obtubieron.

  Rosco(){
    // for (var index = 0; index < letras.length; index++) {
    //   Pregunta roscoPregunta = Pregunta(letras[index], definiciones[index], respuestas[index]);
    //   // roscoPreguntas!.add(roscoPregunta);
    //   roscoPreguntas.add(roscoPregunta);
    // }
    // Con addAll se agregan todos los elementos a la lista de una vez
    roscoPreguntas.addAll(RoscoApi().obtenerRoscos());
  }

  Pregunta obtenerPregunta(bool preguntaInicial){
    if (preguntaInicial) {
      return roscoPreguntas.first;
    }

    return roscoPreguntas.last;
  }

  Pregunta pasaPalbra(){
    return Pregunta("","","");
  }

  String evaluarRepsuesta(String letra, String respuesta){
    //firstWhere Devuelve la pregunta o primer elemento que encuentre en base a una condicion que le enviemos.
    // devuelve la 1er pregunta que encuentre segun la condicion que le estamos enviando y se almacena en pregunta
    var pregunta = roscoPreguntas.firstWhere(
      (rosco) => rosco.letra == letra
    );
    preguntasRespondidas.add(pregunta.letra);//almacena la letra de las preguntas que ya se respondieron

    return pregunta.respuesta == respuesta ? "Letra $letra respuesta correcta" : "Letra $letra respuesta incorrecta";

  }



}