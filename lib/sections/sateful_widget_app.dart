import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

// se sobre escribe este metodo "createState()" se encarga de manejar el estado del widget, este metodo es notificado una vez que el estado del widget es actualizado.
  @override
  State<MyButton> createState() => _MyButtonState();//cada vez que el boton en la app es presionado "createState()" es notificado de que fue actualizado el contenido de la app y internamente todo el widget es renderizado.
}

// State<MyButton> MyButton es el statefullwidget que va ser el controlador del estado de este widget
class _MyButtonState extends State<MyButton> {
  String onPressText = "";
  int indexText = 0;
  List<String> collectionsText = ['Flutter','Kotlin','Swift'];
  void onPressButton() {
    // setState : Actualiza el estado del widget, y el widget se renderiza en pantalla.
    // El texto onPressText esta siendo actualizado, mdeiante "setState" indicamos que el texto se actualiza entonces todo el widget va a ser renderizado lo que proboca que el "widget Text" que aparece en el body se renderize.
    setState(() {
      onPressText = collectionsText[indexText];
      indexText = indexText < collectionsText.length-1 ? indexText+1 : 0 ;
    });
  }
  //  build : Es el encargado de escribir, dibujar en la pantalla de la app los widgets que se retornan. y que es un solo widget y se renderiza en la pantalla.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(onPressText, style: TextStyle(fontSize: 40.0)),
              Padding(padding: EdgeInsets.all(10.0)),

              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  // onPressed: añade un comportamiento al boton cuando se lo presiona, ejemplo: puedo llamar a una funcion que cree y me devuelva algun resultado. tiene un callback que llama a la funciones que seleccionemos en "onPress"
                  onPressed: onPressButton,
                  child: Text("Actualizar", style: TextStyle(color: Colors.orange, fontSize: 20.0),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
