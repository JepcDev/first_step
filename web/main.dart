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
  document.querySelector("#letra")!.text = primeraDefinicion.letra;

  document.querySelector("#btnEnviar")!.onClick.listen((Event){
    var respueta = (document.querySelector("#textRespuesta") as HTMLInputElement).value;
    var letra = document.querySelector("#letra")!.textContent;
    print(letra);
    print(respueta);
  });
}