// Nos proporciona la series de widgets que vamos a ocupar para construir nuestra app
import 'package:flutter/material.dart';

void main(){
  //es una funcion que utiliza flutter para ejecutar la primer funcion, es la primer funcion que se se ejecuta al correr la app.
  runApp(

      //* Stateless widgets
      const MaterialApp(
        // indicamos la clase que vamos a usar para manejar el widget
        home: MyApp(),
      )

  );
}

// StatelessWidget: Son widget que son inmutables, Son widgets que son inmutables, cuando creamos el widget se crea con cierto contenido entonces, el widget stateless se crea y permanecera con su contenido inalterable a lo largo del ciclo de vida del widget. Como una especie de variable constante.
// Clase con la que manejaremos el StatelessWidget
// heredamos del statelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

// build es un widget qe dibuja en pantalla todos los widget que estamos creando en el StatelessWidget
// @override sobreescribimos el comportamiento del widget principal que extendemos(heredamos) del widget StatelessWidget, es como sobreescribir los metodos de una clase que estamos extendiendo o heredando.
  @override
  Widget build(BuildContext context) {
    const double iconSize = 40.0;
    // const Color fontColor = Colors.blueGrey;
    // const double fontSize = 20.0;
    final TextStyle textStyle = TextStyle(fontSize: 30.0, color: Colors.blueGrey);
    // Scaffold: es un widget que nos entrega un esquema basico en la app(cabecera,cuerpo, ect).
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless widget"),
      ),
      // Container: nos permite añadirle padding a los widgets que estan dentro del body o seccion
      body: Container(
        // child: Esta propiedad nos permite anidar nuevos widgets al widget principal.
        // Column: Widget que crea una columna de widgets.
        child: Center(
          child: Column(
            //crossAxisAlignment: propiedad que nos permite expandir el widget o seccion hasta tomar todo el ancho de la pantalla.
            // CrossAxisAlignment.stretch: funcion que nos permite utilizar todo el ancho de la pantalla.
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // <Widget> [] : coleccion de widgets anidados al widget principal.
            // children: recibe una coleccion de widgets
            children: <Widget> [
              // Llamamos al widget personalizado que creamos llamado MyCard(title:,icon:).
              MyCard(
                title: Text("Flutter", style: textStyle,),
                icon: Icon(Icons.thumb_up, size: iconSize, color: Colors.lightBlue,)
              ),
              MyCard(
                title: Text("Kotlin", style: textStyle,),
                icon: Icon(Icons.android, size: iconSize, color: Colors.orangeAccent,)
              ),
              MyCard(
                title: Text("React Native", style: textStyle),
                icon: Icon(Icons.rocket_launch_outlined, size: iconSize, color: Colors.blueAccent,)
              ),
              MyCard(
                title: Text("Swift", style: textStyle),
                icon: Icon(Icons.switch_left, size: iconSize, color: Colors.orange,)
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Wiget personalizado que utilizaremos para dar formato a los elementos card que reutilizaremos.
class MyCard extends StatelessWidget {
  // const MyCard({super.key, required this.title, required this.icon});
  // Son atributos que necesita el widget MyCard para construirse y ser resnderizado en la pantalla.
  final Widget title;
  final Widget icon;
  // Aqui declaramos los atributos y widgets que vamos a recibir desde el widget o clase que haga una instancia de este widget.
  // Aqui ponemos el constructor del widget, que es el primer metodo que se llama cuando se llama al widget
  // Aqui recibimos los parametros que este widget quiere consumir y nos envien desde el widget, clase que nos esta llamando.
  const MyCard({super.key, required this.title,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: es una propiedad que nos permite darle un padding a cada seccion, un espacio entre las secciones o elementos.
      // EdgeInsets(es una clase y tiene una serie de funciones internas).only(bottom: 3.0)(una funcion): Le pone un padding de 3 pixeles solamente en la parte de abajo bottom.Esta clase nos permite poner espacios segun en que lugar de la app lo necesitemos.
      padding: const EdgeInsets.only(bottom: 1.0),
      // Card: es un widget que permite dibujar(renderizar) en pantalla de la app una seccion donde vamos a ir colocando 2 elemento titulo y icono.
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              title,
              icon
            ],
          ),
        )
      ),
    );
  }
}
