import 'dart:io';

void main (List<String> arguments){
  var unaLaptop = Computadora( ram: 32, cpu: 'Intel core i9',marca: 'Allienware',); //el valor de la palabra new es opcional - se está creando un objeto de Computadora - parámetros nombrados
  print('Información de la laptop que te venden en internet: $unaLaptop');
  stdout.write('¿Esta computadora es adecuada para la materia DMM?: ');
  String? respuesta = stdin.readLineSync(); //entradas de valores desde la terminal
  if(respuesta != null){
     if(respuesta.contains('si')){
    unaLaptop.configurarAdecuada = true;
  }
  else{
    unaLaptop.configurarAdecuada = false;
  }
  } else {
    print('No se puede saber si la PC es adecuada porque se recibió null');
  }
  print('unaLaptop es adecuada para tu materia ${unaLaptop.esAdecuada}');
  unaLaptop.marca = 'Lenovo';
  unaLaptop.cpu = 'Celeron';
  unaLaptop.ram = 4;
  print('Información de la laptop que te llegó a casa: $unaLaptop');
}

class Computadora{
  //Campos - si no se tiene en tipo nulable debe crearse con valor de inicio
  String? marca; // _ significa que la variable es privada
  String? cpu;
  int? ram;
  bool adecuada = false;

  //Constructor
  /*Computadora(String m, String c, int r){
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }
*/

  //forma fácil de escribir el constructor con parámetros nombrados
  Computadora ({this.marca, this.cpu, this.ram});

  @override
  String toString() {
    return 'Marca: ${this.marca}, CPU: ${this.cpu}, RAM: ${this.ram}, es adecuada para DMM: $adecuada'; //Si la variable fuera privada se debe poner this, no hace falta ya que es pública
  }

  //geter de la variable adecuada
  bool get esAdecuada{
    return adecuada;
  }

  //setter de la variable adecuada
  set configurarAdecuada(bool valor){
    adecuada = valor;
  }
}
