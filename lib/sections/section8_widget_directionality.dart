import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
        // textDirection -> Widget que nos permite indicarle a flutter y a la app en que direccion va ser mostrado(renderizar en la pantalla) el widget text
        // child nos permite anidar el contenido (un widget) que estemos especificando dentro de la propiedad.
      child: Directionality(
        // widget que nos permite mostrar el widget texto a la izquierda. nos permite saber en que direccion se va renderizar(dibujar) el widget.
        // ltr - left to right
        textDirection: TextDirection.ltr,//se renderiza de izquierda a derecha
        // child nos permite anidar el widget text al widget Directionality
        child: Text("Hello World")//widget que dibuja un texto en la appp
      )
    )
  );
}