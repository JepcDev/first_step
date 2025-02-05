
// ANCHOR -> Variables y constantes
// variables: Espacios en memoria para almacenar un valor, puede cambuiar a lo largo de la ejecucicion del programa.
// Constantes: Son variables pero su contenido no cambia a lo largo de la ejecucion del programa.
void main(List<String> args) {

  //DEV:TODO -> variables y constantes
  // int edad= 28;
  // final double pi = 3.1416;

  // print(saludos("Jose"));
  saludos("Jose", 'pc', 29);
}

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
  void saludos(String nombre, [String? apellido, num? edad]){
    if (apellido != null && edad != null) {
      print('Bienvenido $nombre $apellido, edad $edad');
    }else{
      print('Bienvenido $nombre');
    }
  }

  // DEV:TODO -> funcion con parametros opcionales nombrados
  // DEV:TODO -> programacion orientada a objetos
  // DEV:TODO -> clases
  // DEV:TODO -> constructores
  // DEV:TODO -> Herencia
  // DEV:TODO -> sobreescribir metodos
  // DEV:TODO -> herencia constructor
  // DEV:TODO -> clases abstractas
  // DEV:TODO -> clases interfaces


