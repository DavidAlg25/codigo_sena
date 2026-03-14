import 'class/Employee.dart';
import 'class/Person.dart';

void main() {
  //CREATING AN INSTANCE OF THE Person CLASS
  print("Creando una instancia de Person...");
  final objPerson = Person("Juan Pérez", 30, "juan.perez@example.com");
  //USE OF THE METHODS OF THE Printable INTERFACE
  print("Imprimiendo detalles de la Person...");
  objPerson.printDetails();
  //USE OF THE Serializable Interface Method
  print("Convirtiendo la Person a JSON...");
  print(objPerson.toJsonString());

  // 2. INHERITANCE AND POLYMORPHISM
  print('\n2. HERENCIA Y POLIMORFISMO:');
  final employee_1 = Employee(
    'Carlos López',
    32,
    'carlos@empresa.com',
    'Desarrollador Senior',
    55000.0,
    ['Dart', 'Flutter', 'Firebase'],
  );

  // 3. METHOD OVERLOADING
  print('\n3. SOBRECARGA DE MÉTODOS:');
  print('Empleado antes de agregar habilidades: ${employee_1.addSkill}');
  employee_1.addSkill('Git');
  employee_1.addSkillMultiple(['Python', 'SQL']);
  print('Empleado después de agregar habilidades: ${employee_1.addSkill}');

  // 4. POLYMORPHISM - Same method, different behavior
  print('\n4. POLIMORFISMO - Cálculo de bonos:');
  print('Bono empleado: \$${employee_1.calculateBonus().toStringAsFixed(2)}');
}
