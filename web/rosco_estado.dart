
import 'resultado.dart';
// clase que evalua los resultados del rosco y permite continuar con el juego o no
class RoscoEstado {
  bool continueRosco = true;

  bool continuarRosco(Resultado resultado){
    checkRosco(resultado.cantidadPreguntasCorrectas == resultado.cantidadNumeroPreguntas, "Ganaste el Rosco!! Felicidades");
    checkRosco(resultado.cantidadPreguntasIncorrectas == resultado.cantidadNumeroPreguntas, "Lo siento, Perdiste :)!!");
    checkRosco(resultado.cantidadPreguntasCorrectas+resultado.cantidadPreguntasIncorrectas == resultado.cantidadNumeroPreguntas, "Lo siento, se acabaron los intentos :)");

    return continueRosco;
  }

  void checkRosco(bool condicion, mensaje){
    if(condicion){
      continueRosco = false;
      print(mensaje);
    }
  }
}