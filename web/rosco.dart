import 'pregunta.dart';
import 'rosco_api.dart';

// Clase del juego del Rosco
class Rosco{
  // List<Pregunta>? roscoPreguntas = [] ;
  List<Pregunta> roscoPreguntas = [];

  Rosco(){
    // for (var index = 0; index < letras.length; index++) {
    //   Pregunta roscoPregunta = Pregunta(letras[index], definiciones[index], respuestas[index]);
    //   // roscoPreguntas!.add(roscoPregunta);
    //   roscoPreguntas.add(roscoPregunta);
    // }
    // Con addAll se agregan todos los elementos a la lista de una vez
    roscoPreguntas.addAll(RoscoApi().obtenerRosocos());
  }

  Pregunta obtenerPregunta(){
    return roscoPreguntas[0];
  }

  Pregunta pasaPalbra(){
    return Pregunta("","","");
  }

  String evaluarRepsuesta(String letra, String respuesta){
    // Buscamos coincidencias dentro de la lista roscoPreguntas, buscamos en la lista si existe una letra(rosco.letra == letra) y(&& ) ademas si existe la misma respuesta(rosco.respuesta == respuesta) que recibimos por parametro
    var esCorrecta = roscoPreguntas.any(
      (rosco) => rosco.letra == letra && rosco.respuesta == respuesta,
    );

    if (esCorrecta) {
      return "Letra $letra respuesta correcta";
    }

    return "Letra $letra respuesta incorrecta";
  }



}