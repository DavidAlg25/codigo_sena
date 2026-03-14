import 'class/Person.dart';
import 'class/Employee.dart';
 
void main() {
  //CREACIÓN DE UNA INSTANCIA DE LA CLASE Persona
  print("Creando una instancia de Persona...");
  final objPersona = Person("Juan Pérez", 30, "juan.perez@example.com");
  //USO DE LOS MÉTODOS DE LA INTERFAZ Imprimible
  print("Imprimiendo detalles de la persona...");
  objPersona.printDetails();
  //USO DE LOS MÉTODOS DE LA INTERFAZ Serializable

  print("Convirtiendo la persona a JSON...");
  print(objPersona.toJsonString());

  final objEmpleado = Employee(objPersona.name, objPersona.age, objPersona.email, "Gerente", 2000000, ["Ordenado", "coordinado"] );
   print("Imprimiendo detalles del empleado...");
  objEmpleado.printDetails();
}