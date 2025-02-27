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
    if (preguntaInicial) return roscoPreguntas.first;
    // any devuelve un boleano segun que devuelva la funcion que le enviemos.
    // en firstWhere estamos enviando una funcion flecha a cada uno de los elementos de "roscoPreguntas" para poder acceder al elemento de esa lista en este caso al elemento(objeto) de tipo pregunta
    // y al objeto "rosco" de tipo pregunta de la lista de roscoPreguntas accedemos al atributo "letra"
    // y lo que queremos obtener de firstWhere es que solamente vamos a traer la primera pregunta donde esta no exista dentro de la coleccion preguntasRespondidas
    // dentro de firstWhere ejecutamos una funcion "any" donde buscamos la "letra" de la lista de preguntasRespondidas que sea igual a la letra del objeto rosco, pero al estar negando la funcion estamos queriendo traer la letra que no se enceuntra dentro de la lista de preguntasRespondidas
    // basicamente cada vez que preguntemos que si la letra de rosco existe dentro de preguntasRespondidas y esta nos devuelva verdadero entoces al negar! la respuesta de any le decimos a firstWhere que no tome ese elemento o objetos rosco de tipo pregunta(de la coleccion roscoPreguntas) ya que se encuentra dentro de las preguntasRespondidas y entonces pasa a la siguiente.
    // Le decimos a firstWhere que no tome ese elemento rosco cada vez que la respuesta de any sea true. ya que al negar la respuesta de !any volvemos un true a false y firstWhere entiende que no debe tomar o devolver ese elemento
    // orElse:() => Pregunta("", "", "") cuando llegamos al final de la coleccion de roscoPreguntas retornamos un objeto Pregunta vacio, para reiniciar el juego del rosco con la coleccion preguntasRespondidas vacia.
    var siguientePregunta = roscoPreguntas.firstWhere(
      (rosco) =>
          !preguntasRespondidas.any(
            (letraRespondida) => letraRespondida == rosco.letra,
          ),orElse:() => Pregunta("", "", "")
    );

    // cuando llegamos al final de la lista roscoPreguntas comprovamos si nos devuelven un objeto Pregunta vacion y reiniciamos las Preguntas preguntasRespondidas, volvemos a llamar el metodo y reiniciamos el rosco
    if (siguientePregunta.letra =="" && siguientePregunta.definicion=="" && siguientePregunta.respuesta=="") {
      preguntasRespondidas = [];
      return obtenerPregunta(false);
    }

    return siguientePregunta;
  }

  Pregunta pasaPalabra(){
    return Pregunta("","","");
  }

  String evaluarRepsuesta(String letra, String respuesta){
    //firstWhere Devuelve la pregunta o primer elemento que encuentre en base a una condicion que le enviemos.
    // devuelve la 1er pregunta que encuentre segun la condicion que le estamos enviando y se almacena en pregunta
    var pregunta = roscoPreguntas.firstWhere(
      (rosco) => rosco.letra == letra
    );
    preguntasRespondidas.add(pregunta.letra);//almacena la letra de las preguntas que ya se respondieron
    print(preguntasRespondidas);

    return pregunta.respuesta == respuesta ? "Letra $letra respuesta correcta" : "Letra $letra respuesta incorrecta";

  }



}