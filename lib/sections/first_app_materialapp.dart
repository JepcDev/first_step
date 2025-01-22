import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    // Nos permite envoler una serie de widgets. para poder utilizar los widgets de material desing que formaran parte de la app.
    MaterialApp(
      // Propiedad para el nombre de la app.
      title: "First App",
      //home: En esta propiedad vamos a colocar todos los widgets que va ir formando a la app.
      //Scaffold: El widget Scaffold nos permite crear un esquema. estructura dentro de una app flutter(encabezado, cuerpo,widgets principales) para despues poder mostrarlo(rederizarlo) dentro de la app.
      //Scaffold: Una serie de widget que son comunes en todas las apps, Nos permite ir anidando wiget entre widget
      home: Scaffold(
        // appBar: Nos permite crear el encabezado de la app, un appbar en la app en la parte superior.
        appBar: AppBar(
          // Propiedad title: para el titulo de la app, y el widget text que nos permite poner texto en flutter en la pantalla de la app.
          title: const Text("Mi primera app"),
        ),
        //body widget: que nos permite anidar los widgets que seran parte del cuerpo de nuestra app
        // Container: nasicamente es un widget que nos permite ir anidando todos los widget que tendra la app, como un contenedor de widgets.
        body: Container(
          child:const Center(
            child: Text("Hello World"),
          ),
        ),
      )
    )
  );
}