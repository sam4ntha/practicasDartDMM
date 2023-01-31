void main(){

//Trabajando con mapas
  //Usando literales
  var heroe1 = {'name': 'Pancho Villa', 'feature': 'Héroe de la Rev',
              'muerte':'asesinado', 'real-name': 'Doroteo Arango'};
  
  print(heroe1);
  heroe1['name'] = 'Francisco Villa';
  print(heroe1);
  print('Tamaño del mapa: ${heroe1.length}');
  
  //Usando objetos
  var heroe2= Map();
  heroe2['name'] = 'Emiliano Zapata';
  heroe2['feature'] = 'Héroe de la Revolución';
  heroe2['nickname'] = 'Caudillo del sur';
  heroe2['muerte'] = 'asesinado';
  
  print(heroe2);

  
  //Mapas con tipos de datos
  var colores= Map<String, int>();
  colores['white'] = 255;
  colores['black'] = 0;
  colores['red'] = 100;
  colores['blue'] = 200;
  print(colores);
  colores.clear();
  print(colores);
  
  //Ver si existe una clave
  print('¿El heroe1 contiene la propiedad de realname?');
  print(heroe1.containsKey('real-name'));
  print('¿El heroe2 contiene la propiedad de realname?');
  print(heroe2.containsKey('real-name'));
}