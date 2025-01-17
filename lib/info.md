# INFO

### main
Es el primer archivo que se ejecuta cuando corremos una app en flutter.
---
## **Comandos vscode utiles**
---
1. ctrl + shift + p
2. Flutter: New Project / aplication / name_app
3. Termina >flutter run
4. hot reload "r", hot restart "R"

**hot reload**: podemos hacer modificaciones a los componentes de la app y "hot reload" renderiza esas nuevas modificacion en tiempo real es decir podemos vializar los cambios o modificaciones sin necesidad de reiniciar(resetear) la aplicacion completa.

## **Stateless Widget**
Son widgets que son inmutables, cuando creamos el widget se crea con cierto contenido entonces, el widget stateless se crea y permanecera con su contenido inalterable a lo largo del ciclo de vida del widget. Como una especie de variable constante.
```dart
class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
## **Stateful widget**
**Mutables** este widget tiene un estado que puede cambiar a lo largo del ciclo de vida del widget y al ser cambiado este estado lo que pasa internamente en este widget es que se renderiza en la app.
```dart
class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
## **TextField**
Permite al usuario ingresar texto en un input, es usado para crear diferentes widgets en una aplicacion en flutter.

Tiene 2 metodos principales:
- **Onchange :** Se acciona cada vez que ingresamos un texto en el input.
- **onSubmitted :** Se acciona cuando presinamos "Enter" o guardar, cuando terminamos de ingresar el texto en el "input".

Tambien se tiene un metodo controlador:
- **Controller :** Se encarga de observar todos los cambios que ocurren en el texto, y manejar estos cambios para ser ingresados en otro lugar, seccion de la app.

