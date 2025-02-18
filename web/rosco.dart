import 'pregunta.dart';

// Clase del juego del Rosco
class Rosco{
  List<Pregunta> roscoPreguntas = [];
  // List<Pregunta>? roscoPreguntas = [] ;

  static List letras = const ["A", "B", "C", "D", "E", "F"];
  static List definiciones = const [
    "Persona que tripula una Astronave o que está entrenada para este Trabajo",
    "Especie de Talega o Saco de Tela y otro material que sirve para llevar o guardar algo",
    "Aparato destinado a registrar imágenes animadas para el cine o la telivision",
    "Obra literaria escrita para ser representada",
    "Que se prolonga muchisimo o excesivamente",
    "Laboratorio y despacho del farmaceutico"
  ];
  static List respuestas = [
    "Astronauta",
    "Bolsa",
    "Camara",
    "Drama",
    "Eterno",
    "Farmacia"
  ];

  Rosco(){
    // for (var index = 0; index < letras.length; index++) {
    //   Pregunta roscoPregunta = Pregunta(letras[index], definiciones[index], respuestas[index]);
    //   // roscoPreguntas!.add(roscoPregunta);
    //   roscoPreguntas.add(roscoPregunta);
    // }

    for (var letra in letras) {
      var index = letras.indexOf(letra);
      var roscoPregunta = Pregunta(letra, definiciones[index], respuestas[index]);
      roscoPreguntas.add(roscoPregunta);
    }
  }

  Pregunta obtenerPregunta(){
    return roscoPreguntas[0];
  }

  Pregunta pasaPalbra(){
    return Pregunta("","","");
  }

  bool evaluarRepsuesta(String letra, String respuesta){
    // Buscamos coincidencias dentro de la lista roscoPreguntas, buscamos en la lista si existe una letra(rosco.letra == letra) y(&& ) ademas si existe la misma respuesta(rosco.respuesta == respuesta) que recibimos por parametro
    var esCorrecta = roscoPreguntas.any(
      (rosco) => rosco.letra == letra && rosco.respuesta == respuesta,
    );
    return esCorrecta;
  }



}