import '../lib/persona.dart';
import '../lib/nino.dart';

void main(List<String> arguments) {
  print("Hola mundo\n");
  
  /*
   * Comentarios
   */
  
  //Variables
  //Constantes   (no varian en el tiempo)
  
  const variable = "cadena";
  final segundo = 3;
  
  //tipos 
  int numero = 3;
  String cadena = "nombre";
  bool verdad = true;
  double real = 3.14;
  
  num numero2 = 2.31;
  
  //Estructura de datos basica (Lista)
  //Lista con valores tipados (String, int...) (solo puede ser de un solo tipo)
  List<String> nombres = [
    "Alvaro",
    "Marco",
    "Silvana",
  ];

  //Lista con valores dinamicos (puede contener String, int... al mismo tiempo)

  List<dynamic> valores = [
    "Alvaro",
    "Marco",
    "Silvana",
    5,
    false,
    "Nombre"
  ];
  
  //loops (iteradores)
  //For clasico con iterador
  for(int i=0;i<= nombres.length;i++){
    //sentencia que realizara 
  }

  //For in (iterador en forma de objeto)
  for(String i in nombres){
    print(i);
  }
  
  //condicionales
  //if-else
  if(verdad){
    // sentencia por verdad
    print(nombres[0]);
  }else{
    //sentencia por falso
  }
  
  //operador elvis
  nombres[0]=="Alvaro"? print("si es verdad"):print("si es falso");
  
  //while 
  while(nombres.length<=3 && verdad){
    print("hola");
    verdad= false;
  }  
  
  print("\n");

  //POO
  //para poder utilizar la clase persona se debe importar dicha clase
  //(revisar la parte superior al main())


  //Objetos ver la clase "Persona"
  Persona alvaro = Persona("Alvaro", 22, false);
  
  //operadores en cascada
  Persona german = Persona("German", 24, false)
    ..imprimirNombre()
    ..setNombre("Nuevo Nombre 2")
    ..imprimirNombre()
    ..imprimirEdad();
  
  print("\n");
  
  print(alvaro.nombre);
  //setter clasico (void)
  alvaro.setNombre("Nuevo Nombre");
  //setter recomendado
  alvaro.nombre = "Ariel";
  
  //getter recomendado
  print("con getter: "+alvaro.nombre+"\n");

  //herencia (revisar la clase nino)
  Nino pepe = Nino(4, "Pepe", 22, false)
  ..mostrar();
  
  //arrow function para la funcion anonima
  //los arrow functions tambien son conocidos como lambdas o short expressions
  void function()=>print("funcion");
  
  //Funciones anonimas
  void onPressed(){
      function();
  }
  
  //llamamos a la funcion anonima
  onPressed();

  //Expresiones Regulares (RegEx) (Pattern)
  //tienen la misma sintaxis y uso que JS o EcmaScript
}
