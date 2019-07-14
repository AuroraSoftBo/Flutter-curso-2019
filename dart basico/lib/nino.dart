import 'persona.dart';
class Nino extends Persona{
  int _curso;
  
  Nino(int curso, String nombre, int edad, bool genero):super(nombre,edad,genero){
    this._curso = curso;
  }

  void mostrar(){
    super.mostrar();
    print("Su curso es: "+this._curso.toString());
  }
}