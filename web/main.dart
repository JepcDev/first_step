import 'package:web/web.dart';


import 'rosco.dart';
import 'pregunta.dart';
import 'rosco_estado.dart';


void main(){
  var rosco = Rosco();
  // print('start');
  var primeraDefinicion = rosco.obtenerPregunta(true);
  // print(primeraDefinicion.definicion);
  // console.log(document.querySelector('#pregunta')!);
  // final idPregunta = document.querySelector('#pregunta')!;
  // idPregunta.text =' primeraDefinicion.definicion';
  document.querySelector("#pregunta")!.text = primeraDefinicion.definicion;
  document.querySelector("#letra")!.text = primeraDefinicion.letra;

// DEV:COMMENT -> #btnEnviar
  document.querySelector("#btnEnviar")!.onClick.listen((event){
    var respuesta = (document.querySelector("#textRespuesta") as HTMLInputElement).value;
    var letra = document.querySelector("#letra")!.textContent;
    String mensaje = rosco.evaluarRepsuesta(letra!, respuesta);

    var roscoEstado = RoscoEstado();
    // al implementar la interface Resultado se puede usar los atributos y el rosco
    if (roscoEstado.continuarRosco(rosco)) {

      var nuevaPregunta = rosco.obtenerPregunta(false);
      actualizarUI(nuevaPregunta);
      print(mensaje);
    }else{
      desabilitarBotones();
    }
  });

// DEV:COMMENT -> #btnPasapalabra
  document.querySelector("#btnPasapalabra")!.onClick.listen((event){
    var resultadoRosco = RoscoEstado();

    if (resultadoRosco.continuarRosco(rosco)) {
      var letra = document.querySelector("#letra")!.textContent;
      var nuevaPregunta = rosco.pasaPalabra(letra!);
      actualizarUI(nuevaPregunta);
    }else{
      desabilitarBotones();
    }
  });

  document.querySelector("#reiniciar")!.onClick.listen((event){
    rosco.reiniciarRosco();
    habilitarBotones();
    document.querySelector("#pregunta")!.text = primeraDefinicion.definicion;
    document.querySelector("#letra")!.text = primeraDefinicion.letra;
    // print(rosco.cantidadNumeroPreguntas);
    // print(rosco.cantidadPreguntasIncorrectas);
    // print(rosco.cantidadPreguntasCorrectas);
    // print(rosco.preguntasPasadas);
    // print(rosco.preguntasRespondidas);
  });
}

void actualizarUI(Pregunta pregunta){
  document.querySelector("#pregunta")!.text = pregunta.definicion;
  document.querySelector("#letra")!.text = pregunta.letra;
  // (document.querySelector("#textRespuesta")!.textContent) = "";
  (document.querySelector("#textRespuesta") as HTMLInputElement).value = "";
}

void desabilitarBotones(){
  (document.querySelector("#btnEnviar") as HTMLButtonElement).disabled=true;
  (document.querySelector("#btnPasapalabra") as HTMLButtonElement).disabled=true;
  (document.querySelector("#reiniciar") as HTMLButtonElement).disabled=false;
}
void habilitarBotones(){
  (document.querySelector("#btnEnviar") as HTMLButtonElement).disabled=false;
  (document.querySelector("#btnPasapalabra") as HTMLButtonElement).disabled=false;
  (document.querySelector("#reiniciar") as HTMLButtonElement).disabled=true;
}