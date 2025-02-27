import 'package:web/web.dart';


import 'rosco.dart';
import 'pregunta.dart';


void main(){
  var rosco = Rosco();
  // print('start');
  var primeraDefinicion = rosco.obtenerPregunta(true);
  print(primeraDefinicion.definicion);
  // console.log(document.querySelector('#pregunta')!);
  // final idPregunta = document.querySelector('#pregunta')!;
  // idPregunta.text =' primeraDefinicion.definicion';
  document.querySelector("#pregunta")!.text = primeraDefinicion.definicion;
  document.querySelector("#letra")!.text = primeraDefinicion.letra;

  document.querySelector("#btnEnviar")!.onClick.listen((Event){
    var respuesta = (document.querySelector("#textRespuesta") as HTMLInputElement).value;
    var letra = document.querySelector("#letra")!.textContent;

    String mensaje = rosco.evaluarRepsuesta(letra!, respuesta);

    var nuevaPregunta = rosco.obtenerPregunta(false);
    actualizarUI(nuevaPregunta);

    print(mensaje);
  });
}

void actualizarUI(Pregunta pregunta){
  document.querySelector("#pregunta")!.text = pregunta.definicion;
  document.querySelector("#letra")!.text = pregunta.letra;
  document.querySelector("#textRespuesta")!.textContent = "";
}