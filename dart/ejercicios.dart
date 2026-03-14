void main() { 
  //areaPerimetro(5);
  //celsiusFahrenheit(30);
  //hallarMaximo([110, 10, 1, 30, 90]);
  //parImpar(30);
  //iterarLista(["Casa", "Perro", "Arbol"]);
  //tablasMultiplicar(8);
  //secuenciaFibonacci(2);
  //enteroMaxMin([1, 2 ,30, 55, 9, 9, 7, 99, 123, 10]);
  //anioBisiesto(2024);
  listNoRepeat();
  contadorLetras("SENA ES ADSO", "A", "E");
  operaciones("-", 3, 4);
  reemplazar("No sabía que era ser Dios hasta que aprendí a programar");
  primoPar(3);
} 



// Calcular el área y perímetro de un cuadrado
void areaPerimetro(lado){
  int area = lado * lado;
  int perimetro = lado * 4;
  
  print(' ');
  print('******Área y perímetro de un cuadrado****');
  print(' ');
  print('Area: $area');
  print('Perimetro: $perimetro');
}

// Convertir de Celsius a farenheit
void celsiusFahrenheit( double celsius){
  double fahrenheit = (celsius * 9 / 5) + 32;
   print(' ');
  print('******Celsius a Fahrenheit****');
  print(' ');
  print("$celsius °C = $fahrenheit °F");
}

// Encontrar el máximo de tres números
void hallarMaximo(List<int> numeros){
 int maximo = numeros[0]; 
  for (int i = 1; i < numeros.length; i++) { 
    if (numeros[i] > maximo) { 
      maximo = numeros[i]; 
    } 
  } 
  print(' ');
  print('****** Máximo de una lista ******'); 
  print(' ');
  print('El máximo es: $maximo');
}

  
  
// Verificar si un número es par o impar
void parImpar(numero){
  print(' ');
  print('******Número es par o impar****');
  print(' ');
  if(numero % 2 == 0){
    print('El numero $numero es par');
  } else {
    print('El numero $numero es impar');
  }
}

// Iterar en una lista y mostrar sus elementos
void iterarLista(List<String> elementos){
  print(' ');
  print('********* Lista de elementos ***********');
  print(' ');
  for(var x = 0; x < elementos.length; x++){ 
    print('${x}) ${elementos[x]}'); 
  } 
  
}


// Realizar las tablas de multiplicar de un número dado
void tablasMultiplicar(numero){ 
  print('********* Tabla del $numero ***********');
  print(' ');
  for(var x = 0; x <= 15; x++){ 
    print('$numero x $x = ${numero * x}'); 
  } 
} 

   
// Realizar la sucesión de Fibonacci de un número dado
 int fibonacci(n){ 
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
 }

  void secuenciaFibonacci(indice){
    print(' ');
    print('********* Secuencia Fibonacci *********** ');
    print(' ');
    for(var i = 0; i <= indice; i++){
      print('fibonacci($i) = ${fibonacci(i)}');
  } }

// Crear una lista de 10 números entero, determinado mayor y menor
void enteroMaxMin(List<int> numeros){
 int maximo = numeros[0]; 
  int minimo = numeros[0]; 
  for (int i = 1; i < numeros.length; i++) { 
    if (numeros[i] > maximo) { 
      maximo = numeros[i]; 
    } else if(numeros[i] < minimo){
      minimo = numeros[i];
    }
  } 
  print(' ');
  print('******Mayor y menor de una lista******'); 
  print(' ');
  print('El numero mayor es: $maximo');
  print('El numero menor es: $minimo');
}

//Determinar cuando un año es bisiesto de acuerdo a un año indicado
void anioBisiesto(int anio){
  if(anio % 4 == 0 && anio % 100 != 0 || anio % 400 == 0){
    print("El año $anio es bisiesto");
  }else{
  print("El año $anio no es bisiesto");}
}

//Crear una lista de 10 números que no se repitan
void listNoRepeat(){
  List<int> numeros = [];
  for(var i = 1; i <= 10; i++ ){
    numeros.add(i);
  }
  print(' ');
  print('******Lista no repetida******'); 
  print(' ');
  print(numeros);
}

//Cantidad de repeticiones de las letras (E, A) en (“SENA ES ADSO”)
void contadorLetras(String texto, String letra1, String letra2){
  int contador1 = 0;
  int contador2 = 0;
  for(var i = 0; i < texto.length; i++){
    if(texto[i] == letra1){
      contador1++;
    }
    if(texto[i] == letra2){
      contador2++;
    }
  }
  print(' ');
  print('******Cantidad de letras en cadena de texto******'); 
  print(' ');
  print('En este texto hay $contador1 letras $letra1');
  print('En este texto hay $contador2 letras $letra2');
}

// Funcion de operaciones
void operaciones(String operacion, int val1, int val2){
  switch(operacion){
    case "*" || "multiplicacion":
    print(' ');
    print('********* $val1 x $val2 *********** ');
    print('Resultado: ${val1 * val2}');
   break;
     
    case "/" || "division":
    print(' ');
    print('********* $val1 / $val2 *********** ');
    print('Resultado: ${val1 / val2}');
   break;
      
      case "+" || "suma":
    print(' ');
    print('********* $val1 + $val2 *********** ');
    print('Resultado: ${val1 + val2}');
   break;
      
      case "-" || "resta":
    print(' ');
    print('********* $val1 - $val2 *********** ');
    print('Resultado: ${val1 - val2}');
   break;
  }
}

//Reemplazar palabras de una cadena
void reemplazar(String cadena){
  print(' ');
    print('********* Reemplazar palabras *********** ');
  print('Original: $cadena');
  Map<String, String> reemplazo = {
    "Dios" : "Programador",
    "aprendí" : "ingrese",
    "programar" : "codificar"
  };
  
  reemplazo.forEach((clave, valor){
    cadena = cadena.replaceAll(clave, valor);
  });
    print('Original: $cadena');
  
}

// Determinar de un número indicado si es primo o par

bool esPar(int numero) {
  return numero % 2 == 0;
}

bool esPrimo(int numero) {
  if (numero <= 1) return false;
  if (numero == 2) return true;
  if (numero % 2 == 0) return false;

  for (int i = 3; i <= numero ~/ 2; i += 2) {
    if (numero % i == 0) return false;
  }
  return true;
}

void primoPar(numero) {

  print(' ');
  print('****** Primo / Par ******'); 

  if (esPar(numero)) {
    print("$numero es par");
  } else {
    print("$numero es impar");
  }

  if (esPrimo(numero)) {
    print("$numero es primo");
  } else {
    print("$numero no es primo");
  }
}
