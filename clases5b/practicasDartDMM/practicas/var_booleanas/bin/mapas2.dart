import 'dart:collection';

void main(List<String> arguments) {
/*stdout.write('Por favor, escribe tu nombre: ');
String? name = stdin.readLineSync();
print('Bienvenida $name al mundo de Dart');*/

//labThings es una Lista de dynamic 
var labThings=['chairs', 'tables', 'PC', 'laptops', 'code', 'software', 'mouse', 'cable'];

print('Imprimiendo el contenido de labThings con print: $labThings');
  
  print('-------------------------------------------------------------------------------------------');

print('Imprimiendo el contenido de labThings con for: ');
for(var e in labThings) {
  print(e);
}

var i=1;
var mapLabThings={
  for(var e in labThings) 
  i++: e
};
  print('-------------------------------------------------------------------------------------------');

print('Contenido del mapa: $mapLabThings');

i=1;
var cosasCon5Letras={
  for(var e in labThings)
  if(e.length >=5 && e.length <=6)
  i++:e
};
    print('-------------------------------------------------------------------------------------------');

print('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');
  print('-------------------------------------------------------------------------------------------');

//Agregar valores a un mapa
cosasCon5Letras[5]='control';
print('Cosas del lab con 5 o 6 letras: $cosasCon5Letras');
//Agregar sólo si no está en el mapa y recuperar ese valor
var valor1=cosasCon5Letras.putIfAbsent(6, ()=>'virus');
    print('-------------------------------------------------------------------------------------------');

print('Valor obtenido del mapa: $valor1');
    print('-------------------------------------------------------------------------------------------');

print('Actualización de cosas del lab con 5 o 6 letras: $cosasCon5Letras');
    print('-------------------------------------------------------------------------------------------');

  //obtención de todas las keys del mapa
  print('claves del mapa mapLabThings: ');
  for(var key in mapLabThings.keys){
    print(key);
  }
  //Obtención de todos los values del mapa
  for(var value in mapLabThings.values){
    print(value);
  }
    print('-------------------------------------------------------------------------------------------');

  //Uso de forEach
  print('Imprimiendo mapLabThings con un forEach: ');
  mapLabThings.forEach((k, v) {
    print('Clave: $k, Valor: $v');
  });
    print('-------------------------------------------------------------------------------------------');

  //Cambiando los valores del mapa
  mapLabThings.forEach((key, value){
    if(key % 2 == 0) mapLabThings[key] = '';
  });
  print('Nuevo contenido de mapLabThings: $mapLabThings');
    print('-------------------------------------------------------------------------------------------');

  //Buscando keys en el mapa mapLabThings
  print('¿El mapa contiene la clave 1?: ${mapLabThings.containsKey(10)}');
  
  //Buscando u valor en el mapa mapLabThings
  print('¿El mapa tiene el valor code?: ${mapLabThings.containsValue('code')}');
    print('-------------------------------------------------------------------------------------------');

  //SplayTreeMap para ordenar un mapa
  var frutas = SplayTreeMap();
  frutas[4] = 'Manzana';
  frutas[1] = 'Naranja';
  frutas[2] = 'Mango';
  frutas[5] = 'Papaya';
  frutas[0] = 'Platano';
  frutas[3] = 'Fresa';
  //El mapa se ordena por claves automáticamente
  print('Mapa de frutas: $frutas');
    print('-------------------------------------------------------------------------------------------');

  /* var frutas2 = Map.fromEntries(frutas.entries.toList());
  print('Frutas2: $frutas2'); */
  
  //Ordenar por valores
  //fromEntries se ocupa para hacer un mapa a partir de otro mapa
  var frutasOrdenadas = Map.fromEntries(frutas.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));
  print('Frutas ordenadas por valor: $frutasOrdenadas');
  

  
  
}