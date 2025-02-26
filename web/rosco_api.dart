import 'pregunta.dart';
import 'db.dart';

class RoscoApi {
  List<Pregunta> roscoPreguntas = [];

  List<Pregunta> obtenerRoscos(){
    for (var letra in Db.letras) {
      var index = Db.letras.indexOf(letra);
      var roscoPregunta = Pregunta(letra, Db.definiciones[index], Db.respuestas[index]);
      roscoPreguntas.add(roscoPregunta);
    }
    return roscoPreguntas;
  }
}