
// ANCHOR -> Variables y constantes
// variables: Espacios en memoria para almacenar un valor, puede cambuiar a lo largo de la ejecucicion del programa.
// Constantes: Son variables pero su contenido no cambia a lo largo de la ejecucion del programa.
// void main(List<String> args) {

  //DEV:TODO -> variables y constantes
  // int edad= 28;
  // final double pi = 3.1416;

  // print(saludos("Jose"));
  // saludos("Jose", 'pc', 29);
// }

  // DEV:TODO -> funcion
  // DEV:COMMENT -> sin retorno
  // void saludos(String nombre) {
  //   print("Bienvenido $nombre");
  // }

  // DEV:COMMENT -> con retorno
  // String saludos(String nombre) {
  //  print("Bienvenido $nombre");
  //   return ("Bienvenido $nombre");
  // }

  // DEV:COMMENT -> function flecha
  // void saludos(String nombre) => print("Bienvenido $nombre");

  // DEV:TODO -> funcion con parametros opcionales  pocionales
  // void saludos(String nombre, [String? apellido, num? edad]){
  //   if (apellido != null && edad != null) {
  //     print('Bienvenido $nombre $apellido, edad $edad');
  //   }else{
  //     print('Bienvenido $nombre');
  //   }
  // }

  // DEV:TODO -> funcion con parametros opcionales nombrados
  // void saludos({String nombre="Anonymous", String apellido = ""}) {
  //   var saludos = StringBuffer("Bienvenido a Dart");
  //   if (nombre != null) {
  //     saludos.write(" $nombre ");
  //   }
  //   if (apellido != null) {
  //     saludos.write(" $apellido ");
  //   }
  //   print(saludos.toString());
  // }

  // DEV:TODO -> programacion orientada a objetos
  // utiliza objetos para relacionarse, ejemplo: un automovil -> equema de poo, el automovil es elemento objeto principal que tiene una serie de (caracteristicas(propiedades):color,modelo,marca) y tambien tiene una serie de (funcionalidade(metodos):Arrancar,Detener,Estacionarse)

  // DEV:TODO -> clases
  // DEV:COMMENT -> Los MÉTODOS son funciones que se encuentran dentro o pertenecen espeficamente a una clase.
  // ejemplo: tenemos objetos: automovil, camion y moto, los cuales comparten caracteristicas y funcionalidades similares, y si nos quisieramos referir a todos ellos como uno solo nos refeririamos como vehiculos
  // Una clase es un conjunto de objetos que comparten caracteristicas y funcionalidades  comunes.
  // class Vehiculo {
    // caracteristicas - Propiedades
  //   String? color;
  //   String? modelo;
  //   String? marca;

    // funcionalidades - Metodos
  //   void Arrancar(){
  //     print("Hola soy el auto $marca de color $color y estoy arrancando");
  //   }
  // }

  // void main(List<String> args) {
  // var auto = Vehiculo();
  // auto.color = "Rojo";
  // auto.marca = "Ford";
  // auto.Arrancar();
  // }

  // DEV:TODO -> constructores
  // Es el mecanismo en programacion para entregarle un estado incial a un objeto
  // Nos sirve para construir un estado inicial de un objeto,
  // class Vehiculo {
  //   // caracteristicas - Propiedades
  //   String? color;
  //   String? modelo;
  //   String? marca;

  //   // constructor
      // Vehiculo(this.marca, this.modelo);
  //   Vehiculo(String marca, String modelo){//le envio los parametros que quiero construir por defecto
  //     //Le digo a la clase que Los parametros que estoy recibiendo los voy a construir al momento de instanciarlos
  //     this.modelo = modelo;
  //     this.marca = marca;
  //   }
  //   // funcionalidades - Metodos
  //   void arrancar(){
  //     print("Hola soy el auto $marca de color $color y estoy arrancando");
  //   }
  // }
  // void main(List<String> args) {
  //  var auto = Vehiculo("Ford", "Focus");
      // auto.arrancar();
  // }

  // DEV:TODO -> Herencia
  // Se encarga de heredar atributos, metos y constructores a clases hijas en una jerarquia. identificar propiedades comunes unos entre otros objetos y asi formar una organizacion de objetos.
  // La herencia nos permite organizar nuestras clases y no tener que repetir el codigo cuando identifiquemos elementos(funcionalidades, caracteristicas) comunes
// class Vehiculo{
//   String? color;
//   String? modelo;
//   String? marca;

//   void mostrarVehiculo(){
//     print("Marca: $marca, Modelo $modelo, color: $color");
//   }

// }

// class Camion extends Vehiculo{

// }

// class Automovil extends Vehiculo {

// }

// void main() {
//   var camion = Camion();
//   camion.color = "Verde";
//   camion.modelo = "Truck";
//   camion.marca = "Volvo";
//   camion.mostrarVehiculo();

//   var auto = Automovil();
//   auto.color = "Azul";
//   auto.modelo = "Focus";
//   auto.marca = "Ford";
//   auto.mostrarVehiculo();
// }

  // DEV:TODO -> herencia constructor
  // DEV:TODO -> sobreescribir metodos
  // DEV:TODO -> clases abstractas
  // DEV:TODO -> clases interfaces


