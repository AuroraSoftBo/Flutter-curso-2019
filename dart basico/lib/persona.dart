//Objetos
class Persona{
  
  String _nombre;
  int _edad;
  bool _genero;   //en este caso si es false = masculino; true = femenino
  
  //Constructores Parametrizados (final)
  
  /*Persona({this.nombre,}){
    this._edad = 10;
    this._genero = false;
  }*/
  
  //no Parametrizados
  
  Persona(String nombre, int edad, bool genero){
    this._nombre = nombre;
    this._edad = edad;
    this._genero = genero;
  }
  
  //Setter clasico
  void setNombre(String nuevoNombre){
    this._nombre = nuevoNombre;
  }
  
  //Setter con arrow Functions
  set nombre(String nuevoNombre) => this._nombre = nuevoNombre;
  
  //Getter clasico
  String getNombre(){
    return this._nombre;
  }
  
  //Getter con arrow functions
  get nombre => this._nombre;

  //Funciones extras
  void imprimirEdad()=> print(this._edad);
  void imprimirNombre()=>print(this._nombre);

  void mostrar(){
    print(this._nombre+"\n"+this._edad.toString());
    this._genero ? print("Femenino") : print("Masculino");
  }

}

//herencia
//revisar la clase Nino

//abstract class
//el concepto de clase abstrarcta es para definir clases y metodos superiores (padres)
//que nos serviran para defirnir de mejor forma la abstraccion de objetos
//abstract

//Interface
//mismo concepto de la herencia multiple (multiples padres), pero con la diferencia
//que son tambien clases abstractas
//implements

//metodos y variables estaticas
//sirven para variables que ocuparan memoria solo ese instante

//En flutter el objeto mas comun que se utilizara es el "Widget"

class Widget{ 
  //Text  => cadena que se mostrara pantalla
  //Image
  //AppBar
}
