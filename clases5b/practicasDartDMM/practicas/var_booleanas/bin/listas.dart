void main() {
  
  //Creando una lista con múltiples tipos de datos
  List misMascotas=[1, 'Ginger', 'perro', 'Husky Siberiano',7.5,
                   2, 'KC', 'perro', 'Mezcla', 5.5,
                   3, 'Moji', 'gato', 'no se sabe', 1.2];
  
  print('Lista de mascotas: ');
  print(misMascotas);
  var longitud = misMascotas.length;
  print('Los datos de misMascotas son: $longitud');
  print('--------------------------------------------------------------');
  
  //Agregando datos de otras mascotas
  misMascotas.add(4);
  misMascotas.add('Moka');
  misMascotas.add('gato');
  misMascotas.add('Siames');
  misMascotas.add('No se sabe');
  
  print('La nueva lista de mascotas: ');
  print(misMascotas);
  longitud = misMascotas.length;
  print('El número de elementos en la lista son: $longitud');
  
  
  
  print('--------------------------------------------------------------');


  //Trabajando con una lista con un tipo de dato definido
  
  List<int> numeros = [1, 2, 3, 4, 5];
  /* No se puede agregar valores que no sean int
  numeros.add(14.25);*/
  
  if(numeros.isEmpty){
    print('La lista números está vacía');
  }
  if(numeros.isNotEmpty){
    print('La lista números no está vacía');
  }
  
  print('El primer número es: ${numeros.first}');
  print('El último número es: ${numeros.last}');
  print('La posición del elmento 3 es: ${numeros.indexOf(3)}');
  numeros.add(3);
  numeros.add(6);
  numeros.add(7);
  numeros.add(3);
  
  print('--------------------------------------------------------------');

  
  print('La nueva lista de números es: ');
  print(numeros);
  print('La última posición del elmento 3 es: ${numeros.lastIndexOf(3)}');
  
  print('--------------------------------------------------------------');
  
  //Agregando elementos de forma dinámica
  List<int> otraLista = [10];
  for(int i=2; i<= 10; i++){
  otraLista.add(10 * i);
  }
  print('La tabla de multiplicar del 10 es: ');
  print(otraLista);
}